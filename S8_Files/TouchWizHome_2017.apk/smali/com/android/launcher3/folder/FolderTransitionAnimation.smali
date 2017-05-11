.class public Lcom/android/launcher3/folder/FolderTransitionAnimation;
.super Ljava/lang/Object;
.source "FolderTransitionAnimation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/folder/FolderTransitionAnimation$FakeFolderIconAnimation;,
        Lcom/android/launcher3/folder/FolderTransitionAnimation$AnimationInfo;,
        Lcom/android/launcher3/folder/FolderTransitionAnimation$ViewUpdateListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAddItemsStartDelay:I

.field private mAnimInfoForClosing:Lcom/android/launcher3/folder/FolderTransitionAnimation$AnimationInfo;

.field private mFolderCloseDuration:I

.field private mFolderExpandDuration:I

.field private mIconAnim:Lcom/android/launcher3/folder/FolderTransitionAnimation$FakeFolderIconAnimation;

.field private mLauncher:Lcom/android/launcher3/Launcher;

.field private final mSineInOut33:Landroid/view/animation/Interpolator;

.field private final mSineInOut50:Landroid/view/animation/Interpolator;

.field private final mSineInOut80:Landroid/view/animation/Interpolator;

.field private mStageAnimator:Landroid/animation/AnimatorSet;

.field private mStateAnimator:Landroid/animation/AnimatorSet;

.field private mStateTransitionDuration:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 105
    const-class v0, Lcom/android/launcher3/folder/FolderTransitionAnimation;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/folder/FolderTransitionAnimation;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/Launcher;)V
    .locals 2
    .param p1, "launcher"    # Lcom/android/launcher3/Launcher;

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    const/16 v0, 0x22

    invoke-static {v0}, Lcom/android/launcher3/util/ViInterpolator;->getInterploator(I)Landroid/view/animation/PathInterpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation;->mSineInOut80:Landroid/view/animation/Interpolator;

    .line 119
    const/16 v0, 0x1f

    invoke-static {v0}, Lcom/android/launcher3/util/ViInterpolator;->getInterploator(I)Landroid/view/animation/PathInterpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation;->mSineInOut50:Landroid/view/animation/Interpolator;

    .line 120
    const/16 v0, 0x1e

    invoke-static {v0}, Lcom/android/launcher3/util/ViInterpolator;->getInterploator(I)Landroid/view/animation/PathInterpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation;->mSineInOut33:Landroid/view/animation/Interpolator;

    .line 123
    iput-object p1, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 124
    new-instance v0, Lcom/android/launcher3/folder/FolderTransitionAnimation$FakeFolderIconAnimation;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/launcher3/folder/FolderTransitionAnimation$FakeFolderIconAnimation;-><init>(Lcom/android/launcher3/folder/FolderTransitionAnimation;Lcom/android/launcher3/folder/FolderTransitionAnimation$1;)V

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation;->mIconAnim:Lcom/android/launcher3/folder/FolderTransitionAnimation$FakeFolderIconAnimation;

    .line 126
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0042

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation;->mAddItemsStartDelay:I

    .line 127
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0028

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation;->mFolderExpandDuration:I

    .line 128
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0026

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation;->mFolderCloseDuration:I

    .line 129
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0027

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation;->mStateTransitionDuration:I

    .line 130
    return-void
.end method

.method static synthetic access$100(Lcom/android/launcher3/folder/FolderTransitionAnimation;)Lcom/android/launcher3/folder/FolderTransitionAnimation$AnimationInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/folder/FolderTransitionAnimation;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation;->mAnimInfoForClosing:Lcom/android/launcher3/folder/FolderTransitionAnimation$AnimationInfo;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/launcher3/folder/FolderTransitionAnimation;Lcom/android/launcher3/folder/FolderTransitionAnimation$AnimationInfo;)Lcom/android/launcher3/folder/FolderTransitionAnimation$AnimationInfo;
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/folder/FolderTransitionAnimation;
    .param p1, "x1"    # Lcom/android/launcher3/folder/FolderTransitionAnimation$AnimationInfo;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation;->mAnimInfoForClosing:Lcom/android/launcher3/folder/FolderTransitionAnimation$AnimationInfo;

    return-object p1
.end method

.method static synthetic access$202(Lcom/android/launcher3/folder/FolderTransitionAnimation;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/folder/FolderTransitionAnimation;
    .param p1, "x1"    # Landroid/animation/AnimatorSet;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/launcher3/folder/FolderTransitionAnimation;Lcom/android/launcher3/folder/FolderTransitionAnimation$AnimationInfo;Lcom/android/launcher3/folder/view/FolderView;Lcom/android/launcher3/folder/view/FolderIconView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/folder/FolderTransitionAnimation;
    .param p1, "x1"    # Lcom/android/launcher3/folder/FolderTransitionAnimation$AnimationInfo;
    .param p2, "x2"    # Lcom/android/launcher3/folder/view/FolderView;
    .param p3, "x3"    # Lcom/android/launcher3/folder/view/FolderIconView;

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/folder/FolderTransitionAnimation;->computeAnimationInfo(Lcom/android/launcher3/folder/FolderTransitionAnimation$AnimationInfo;Lcom/android/launcher3/folder/view/FolderView;Lcom/android/launcher3/folder/view/FolderIconView;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/launcher3/folder/FolderTransitionAnimation;)Lcom/android/launcher3/Launcher;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/folder/FolderTransitionAnimation;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/launcher3/folder/FolderTransitionAnimation;)Landroid/view/animation/Interpolator;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/folder/FolderTransitionAnimation;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation;->mSineInOut80:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/launcher3/folder/FolderTransitionAnimation;)Landroid/view/animation/Interpolator;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/folder/FolderTransitionAnimation;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation;->mSineInOut50:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$800()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/android/launcher3/folder/FolderTransitionAnimation;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private animateAddItemStart(Landroid/animation/AnimatorSet;Lcom/android/launcher3/folder/view/FolderView;Ljava/util/ArrayList;)V
    .locals 6
    .param p1, "animSet"    # Landroid/animation/AnimatorSet;
    .param p2, "openFolder"    # Lcom/android/launcher3/folder/view/FolderView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/animation/AnimatorSet;",
            "Lcom/android/launcher3/folder/view/FolderView;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/IconInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 428
    .local p3, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    if-eqz p3, :cond_0

    if-nez p2, :cond_1

    .line 457
    :cond_0
    :goto_0
    return-void

    .line 432
    :cond_1
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 433
    .local v2, "info":Lcom/android/launcher3/common/base/item/IconInfo;
    invoke-virtual {p2}, Lcom/android/launcher3/folder/view/FolderView;->getInfo()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v4

    iget-object v4, v4, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 434
    invoke-virtual {p2, v2}, Lcom/android/launcher3/folder/view/FolderView;->getViewForInfo(Lcom/android/launcher3/common/base/item/IconInfo;)Landroid/view/View;

    move-result-object v1

    .line 435
    .local v1, "appIcon":Landroid/view/View;
    if-eqz v1, :cond_2

    .line 436
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/view/View;->setAlpha(F)V

    .line 437
    iget-object v4, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    const v5, 0x7f05000f

    invoke-static {v4, v5}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    .line 438
    .local v0, "anim":Landroid/animation/Animator;
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 439
    iget v4, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation;->mAddItemsStartDelay:I

    int-to-long v4, v4

    invoke-virtual {v0, v4, v5}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 440
    iget-object v4, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation;->mSineInOut33:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v4}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 441
    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_1

    .line 446
    .end local v0    # "anim":Landroid/animation/Animator;
    .end local v1    # "appIcon":Landroid/view/View;
    .end local v2    # "info":Lcom/android/launcher3/common/base/item/IconInfo;
    :cond_3
    new-instance v3, Lcom/android/launcher3/folder/FolderTransitionAnimation$4;

    invoke-direct {v3, p0, p2}, Lcom/android/launcher3/folder/FolderTransitionAnimation$4;-><init>(Lcom/android/launcher3/folder/FolderTransitionAnimation;Lcom/android/launcher3/folder/view/FolderView;)V

    invoke-virtual {p1, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0
.end method

.method private animateClose(Landroid/animation/AnimatorSet;Landroid/view/View;J)V
    .locals 9
    .param p1, "animSet"    # Landroid/animation/AnimatorSet;
    .param p2, "targetView"    # Landroid/view/View;
    .param p3, "duration"    # J

    .prologue
    const v8, 0x3f333333    # 0.7f

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 365
    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    invoke-virtual {v2}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v2

    new-array v3, v7, [F

    const/4 v4, 0x0

    aput v4, v3, v6

    invoke-static {p2, v2, v3}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 366
    .local v0, "alphaAnim":Landroid/animation/Animator;
    const-wide/16 v2, 0x2

    mul-long/2addr v2, p3

    const-wide/16 v4, 0x3

    div-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 367
    iget-object v2, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation;->mSineInOut80:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 368
    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 370
    invoke-static {}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v1

    .line 371
    .local v1, "scaleAnimSet":Landroid/animation/AnimatorSet;
    const/4 v2, 0x2

    new-array v2, v2, [Landroid/animation/Animator;

    sget-object v3, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    .line 372
    invoke-virtual {v3}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [F

    aput v8, v4, v6

    invoke-static {p2, v3, v4}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v6

    sget-object v3, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    .line 373
    invoke-virtual {v3}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [F

    aput v8, v4, v6

    invoke-static {p2, v3, v4}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v7

    .line 371
    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 374
    invoke-virtual {v1, p3, p4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 375
    iget-object v2, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation;->mSineInOut80:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 376
    invoke-virtual {p1, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 378
    new-instance v2, Lcom/android/launcher3/folder/FolderTransitionAnimation$ViewUpdateListener;

    invoke-direct {v2, p2, v6}, Lcom/android/launcher3/folder/FolderTransitionAnimation$ViewUpdateListener;-><init>(Landroid/view/View;Z)V

    invoke-virtual {p1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 379
    return-void
.end method

.method private animateCloseToPosition(Landroid/animation/AnimatorSet;Lcom/android/launcher3/folder/view/FolderView;Lcom/android/launcher3/folder/view/FolderIconView;J)V
    .locals 6
    .param p1, "animSet"    # Landroid/animation/AnimatorSet;
    .param p2, "openFolder"    # Lcom/android/launcher3/folder/view/FolderView;
    .param p3, "folderIconView"    # Lcom/android/launcher3/folder/view/FolderIconView;
    .param p4, "duration"    # J

    .prologue
    const/4 v5, 0x0

    .line 382
    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    invoke-virtual {v2}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v4, v3, v5

    invoke-static {p2, v2, v3}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 383
    .local v0, "alphaAnim":Landroid/animation/Animator;
    invoke-virtual {v0, p4, p5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 384
    iget-object v2, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation;->mSineInOut80:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 385
    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 387
    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {p2, v2}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;[F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 388
    .local v1, "scaleAnim":Landroid/animation/ValueAnimator;
    new-instance v2, Lcom/android/launcher3/folder/FolderTransitionAnimation$3;

    invoke-direct {v2, p0, p2, p3}, Lcom/android/launcher3/folder/FolderTransitionAnimation$3;-><init>(Lcom/android/launcher3/folder/FolderTransitionAnimation;Lcom/android/launcher3/folder/view/FolderView;Lcom/android/launcher3/folder/view/FolderIconView;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 404
    invoke-virtual {v1, p4, p5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 405
    iget-object v2, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation;->mSineInOut80:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 406
    invoke-virtual {p1, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 408
    new-instance v2, Lcom/android/launcher3/folder/FolderTransitionAnimation$ViewUpdateListener;

    invoke-direct {v2, p2, v5}, Lcom/android/launcher3/folder/FolderTransitionAnimation$ViewUpdateListener;-><init>(Landroid/view/View;Z)V

    invoke-virtual {p1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 409
    return-void

    .line 387
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private animateFadeIn(Landroid/animation/AnimatorSet;Landroid/view/View;)V
    .locals 3
    .param p1, "animSet"    # Landroid/animation/AnimatorSet;
    .param p2, "targetView"    # Landroid/view/View;

    .prologue
    .line 412
    iget-object v1, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    const v2, 0x7f050005

    invoke-static {v1, v2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    .line 413
    .local v0, "enterAnimator":Landroid/animation/Animator;
    invoke-virtual {v0, p2}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 414
    iget-object v1, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation;->mSineInOut33:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 415
    new-instance v1, Lcom/android/launcher3/folder/FolderTransitionAnimation$ViewUpdateListener;

    const/4 v2, 0x1

    invoke-direct {v1, p2, v2}, Lcom/android/launcher3/folder/FolderTransitionAnimation$ViewUpdateListener;-><init>(Landroid/view/View;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 416
    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 417
    return-void
.end method

.method private animateFadeOut(Landroid/animation/AnimatorSet;Landroid/view/View;)V
    .locals 3
    .param p1, "animSet"    # Landroid/animation/AnimatorSet;
    .param p2, "targetView"    # Landroid/view/View;

    .prologue
    .line 420
    iget-object v1, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    const v2, 0x7f05000b

    invoke-static {v1, v2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    .line 421
    .local v0, "enterAnimator":Landroid/animation/Animator;
    invoke-virtual {v0, p2}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 422
    iget-object v1, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation;->mSineInOut33:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 423
    new-instance v1, Lcom/android/launcher3/folder/FolderTransitionAnimation$ViewUpdateListener;

    const/4 v2, 0x0

    invoke-direct {v1, p2, v2}, Lcom/android/launcher3/folder/FolderTransitionAnimation$ViewUpdateListener;-><init>(Landroid/view/View;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 424
    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 425
    return-void
.end method

.method private animateOpen(Landroid/animation/AnimatorSet;Landroid/view/View;J)V
    .locals 9
    .param p1, "animSet"    # Landroid/animation/AnimatorSet;
    .param p2, "targetView"    # Landroid/view/View;
    .param p3, "duration"    # J

    .prologue
    const/4 v8, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 346
    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    invoke-virtual {v2}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [F

    aput v5, v3, v7

    invoke-static {p2, v2, v3}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 347
    .local v0, "alphaAnim":Landroid/animation/Animator;
    invoke-virtual {v0, p3, p4}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 348
    iget-object v2, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation;->mSineInOut80:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 349
    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 351
    invoke-static {}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v1

    .line 352
    .local v1, "scaleAnimSet":Landroid/animation/AnimatorSet;
    const/4 v2, 0x4

    new-array v2, v2, [Landroid/animation/Animator;

    sget-object v3, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    .line 353
    invoke-virtual {v3}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [F

    aput v5, v4, v7

    invoke-static {p2, v3, v4}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v7

    sget-object v3, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    .line 354
    invoke-virtual {v3}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [F

    aput v5, v4, v7

    invoke-static {p2, v3, v4}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v6

    const/4 v3, 0x2

    sget-object v4, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    .line 355
    invoke-virtual {v4}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [F

    aput v8, v5, v7

    invoke-static {p2, v4, v5}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    sget-object v4, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    .line 356
    invoke-virtual {v4}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [F

    aput v8, v5, v7

    invoke-static {p2, v4, v5}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v2, v3

    .line 352
    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 357
    invoke-virtual {v1, p3, p4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 358
    iget-object v2, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation;->mSineInOut80:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 359
    invoke-virtual {p1, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 361
    new-instance v2, Lcom/android/launcher3/folder/FolderTransitionAnimation$ViewUpdateListener;

    invoke-direct {v2, p2, v6}, Lcom/android/launcher3/folder/FolderTransitionAnimation$ViewUpdateListener;-><init>(Landroid/view/View;Z)V

    invoke-virtual {p1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 362
    return-void
.end method

.method private cancelStageAnimation()V
    .locals 4

    .prologue
    .line 285
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 287
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 289
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    .line 290
    return-void
.end method

.method private cancelStateAnimation()V
    .locals 4

    .prologue
    .line 293
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 295
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 297
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    .line 298
    return-void
.end method

.method private changeDragBackground(Lcom/android/launcher3/folder/view/FolderView;Z)V
    .locals 11
    .param p1, "openFolder"    # Lcom/android/launcher3/folder/view/FolderView;
    .param p2, "enter"    # Z

    .prologue
    const/4 v9, 0x0

    .line 460
    if-eqz p1, :cond_3

    .line 461
    invoke-virtual {p1}, Lcom/android/launcher3/folder/view/FolderView;->getContent()Lcom/android/launcher3/folder/view/FolderPagedView;

    move-result-object v6

    .line 462
    .local v6, "folderPagedView":Lcom/android/launcher3/folder/view/FolderPagedView;
    if-eqz p2, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 463
    .local v0, "backgroundAlpha":F
    :goto_0
    invoke-virtual {v6}, Lcom/android/launcher3/folder/view/FolderPagedView;->getChildCount()I

    move-result v1

    .line 464
    .local v1, "childCount":I
    invoke-virtual {v6}, Lcom/android/launcher3/folder/view/FolderPagedView;->getCurrentPage()I

    move-result v5

    .line 465
    .local v5, "currentPage":I
    invoke-virtual {p1}, Lcom/android/launcher3/folder/view/FolderView;->getContentBorderWidth()I

    move-result v4

    .line 466
    .local v4, "contentBorderWidth":I
    invoke-virtual {p1}, Lcom/android/launcher3/folder/view/FolderView;->getContentBorderHeight()I

    move-result v3

    .line 467
    .local v3, "contentBorderHeight":I
    invoke-virtual {p1}, Lcom/android/launcher3/folder/view/FolderView;->isWhiteBg()Z

    move-result v8

    .line 469
    .local v8, "whiteBg":Z
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    if-ge v7, v1, :cond_3

    .line 470
    invoke-virtual {v6, v7}, Lcom/android/launcher3/folder/view/FolderPagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/folder/view/FolderCellLayout;

    .line 471
    .local v2, "cl":Lcom/android/launcher3/folder/view/FolderCellLayout;
    if-eqz p2, :cond_1

    .line 472
    const/4 v10, 0x2

    invoke-virtual {v2, v10, v4, v3, v8}, Lcom/android/launcher3/folder/view/FolderCellLayout;->setBgImage(IIIZ)V

    .line 477
    :goto_2
    if-ne v7, v5, :cond_2

    .line 478
    invoke-virtual {v2, v9}, Lcom/android/launcher3/folder/view/FolderCellLayout;->setBackgroundAlpha(F)V

    .line 479
    invoke-virtual {v2, v0}, Lcom/android/launcher3/folder/view/FolderCellLayout;->setPartialBackgroundAlpha(F)V

    .line 469
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .end local v0    # "backgroundAlpha":F
    .end local v1    # "childCount":I
    .end local v2    # "cl":Lcom/android/launcher3/folder/view/FolderCellLayout;
    .end local v3    # "contentBorderHeight":I
    .end local v4    # "contentBorderWidth":I
    .end local v5    # "currentPage":I
    .end local v7    # "i":I
    .end local v8    # "whiteBg":Z
    :cond_0
    move v0, v9

    .line 462
    goto :goto_0

    .line 474
    .restart local v0    # "backgroundAlpha":F
    .restart local v1    # "childCount":I
    .restart local v2    # "cl":Lcom/android/launcher3/folder/view/FolderCellLayout;
    .restart local v3    # "contentBorderHeight":I
    .restart local v4    # "contentBorderWidth":I
    .restart local v5    # "currentPage":I
    .restart local v7    # "i":I
    .restart local v8    # "whiteBg":Z
    :cond_1
    const/4 v10, 0x1

    invoke-virtual {v2, v10, v4, v3, v8}, Lcom/android/launcher3/folder/view/FolderCellLayout;->setBgImage(IIIZ)V

    goto :goto_2

    .line 481
    :cond_2
    invoke-virtual {v2, v0}, Lcom/android/launcher3/folder/view/FolderCellLayout;->setBackgroundAlpha(F)V

    .line 482
    invoke-virtual {v2, v9}, Lcom/android/launcher3/folder/view/FolderCellLayout;->setPartialBackgroundAlpha(F)V

    goto :goto_3

    .line 486
    .end local v0    # "backgroundAlpha":F
    .end local v1    # "childCount":I
    .end local v2    # "cl":Lcom/android/launcher3/folder/view/FolderCellLayout;
    .end local v3    # "contentBorderHeight":I
    .end local v4    # "contentBorderWidth":I
    .end local v5    # "currentPage":I
    .end local v6    # "folderPagedView":Lcom/android/launcher3/folder/view/FolderPagedView;
    .end local v7    # "i":I
    .end local v8    # "whiteBg":Z
    :cond_3
    return-void
.end method

.method private computeAnimationInfo(Lcom/android/launcher3/folder/FolderTransitionAnimation$AnimationInfo;Lcom/android/launcher3/folder/view/FolderView;Lcom/android/launcher3/folder/view/FolderIconView;)Z
    .locals 12
    .param p1, "folderAnimInfo"    # Lcom/android/launcher3/folder/FolderTransitionAnimation$AnimationInfo;
    .param p2, "openFolder"    # Lcom/android/launcher3/folder/view/FolderView;
    .param p3, "folderIconView"    # Lcom/android/launcher3/folder/view/FolderIconView;

    .prologue
    .line 301
    const/4 v0, 0x0

    .line 303
    .local v0, "complete":Z
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 304
    invoke-virtual {p3}, Lcom/android/launcher3/folder/view/FolderIconView;->getIconVew()Landroid/widget/ImageView;

    move-result-object v4

    .line 305
    .local v4, "iconView":Landroid/view/View;
    invoke-virtual {p3}, Lcom/android/launcher3/folder/view/FolderIconView;->getIconSize()I

    move-result v3

    .line 306
    .local v3, "iconSize":I
    const/4 v8, 0x2

    new-array v2, v8, [I

    .line 307
    .local v2, "iconLocation":[I
    const/4 v8, 0x2

    new-array v1, v8, [I

    .line 309
    .local v1, "folderLocation":[I
    invoke-virtual {v4, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 311
    const/4 v8, 0x0

    aget v8, v2, v8

    if-lez v8, :cond_1

    const/4 v8, 0x1

    aget v8, v2, v8

    if-lez v8, :cond_1

    .line 312
    invoke-virtual {p2}, Lcom/android/launcher3/folder/view/FolderView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;

    .line 313
    .local v5, "lp":Lcom/android/launcher3/common/view/DragLayer$LayoutParams;
    const/4 v8, 0x0

    aget v9, v1, v8

    iget v10, v5, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;->x:I

    add-int/2addr v9, v10

    aput v9, v1, v8

    .line 314
    const/4 v8, 0x1

    aget v9, v1, v8

    iget v10, v5, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;->y:I

    add-int/2addr v9, v10

    aput v9, v1, v8

    .line 316
    const/4 v8, 0x0

    aget v8, v2, v8

    const/4 v9, 0x0

    aget v9, v1, v9

    sub-int/2addr v8, v9

    int-to-float v8, v8

    iget v9, v5, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;->width:I

    sub-int/2addr v9, v3

    int-to-float v9, v9

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    sub-float/2addr v8, v9

    float-to-int v6, v8

    .line 318
    .local v6, "startX":I
    const/4 v8, 0x1

    aget v8, v2, v8

    const/4 v9, 0x1

    aget v9, v1, v9

    sub-int/2addr v8, v9

    int-to-float v8, v8

    iget v9, v5, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;->height:I

    sub-int/2addr v9, v3

    int-to-float v9, v9

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    sub-float/2addr v8, v9

    float-to-int v7, v8

    .line 321
    .local v7, "startY":I
    iget-object v8, p1, Lcom/android/launcher3/folder/FolderTransitionAnimation$AnimationInfo;->location:[I

    const/4 v9, 0x0

    aput v6, v8, v9

    .line 322
    iget-object v8, p1, Lcom/android/launcher3/folder/FolderTransitionAnimation$AnimationInfo;->location:[I

    const/4 v9, 0x1

    aput v7, v8, v9

    .line 323
    iget-object v8, p1, Lcom/android/launcher3/folder/FolderTransitionAnimation$AnimationInfo;->scaleBy:[F

    const/4 v9, 0x0

    int-to-float v10, v3

    const/high16 v11, 0x3f800000    # 1.0f

    mul-float/2addr v10, v11

    iget v11, v5, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;->width:I

    int-to-float v11, v11

    div-float/2addr v10, v11

    aput v10, v8, v9

    .line 324
    iget-object v8, p1, Lcom/android/launcher3/folder/FolderTransitionAnimation$AnimationInfo;->scaleBy:[F

    const/4 v9, 0x1

    int-to-float v10, v3

    const/high16 v11, 0x3f800000    # 1.0f

    mul-float/2addr v10, v11

    iget v11, v5, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;->height:I

    int-to-float v11, v11

    div-float/2addr v10, v11

    aput v10, v8, v9

    .line 325
    const/4 v8, 0x1

    iput-boolean v8, p1, Lcom/android/launcher3/folder/FolderTransitionAnimation$AnimationInfo;->isValidView:Z

    .line 327
    const/4 v0, 0x1

    .line 334
    .end local v1    # "folderLocation":[I
    .end local v2    # "iconLocation":[I
    .end local v3    # "iconSize":I
    .end local v4    # "iconView":Landroid/view/View;
    .end local v5    # "lp":Lcom/android/launcher3/common/view/DragLayer$LayoutParams;
    .end local v6    # "startX":I
    .end local v7    # "startY":I
    :cond_0
    :goto_0
    return v0

    .line 330
    .restart local v1    # "folderLocation":[I
    .restart local v2    # "iconLocation":[I
    .restart local v3    # "iconSize":I
    .restart local v4    # "iconView":Landroid/view/View;
    :cond_1
    const/4 v8, 0x0

    iput-boolean v8, p1, Lcom/android/launcher3/folder/FolderTransitionAnimation$AnimationInfo;->isValidView:Z

    goto :goto_0
.end method

.method private prepareOpenAnimation(Lcom/android/launcher3/folder/FolderTransitionAnimation$AnimationInfo;Landroid/view/View;)V
    .locals 3
    .param p1, "info"    # Lcom/android/launcher3/folder/FolderTransitionAnimation$AnimationInfo;
    .param p2, "targetView"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 338
    iget-object v0, p1, Lcom/android/launcher3/folder/FolderTransitionAnimation$AnimationInfo;->location:[I

    aget v0, v0, v1

    int-to-float v0, v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 339
    iget-object v0, p1, Lcom/android/launcher3/folder/FolderTransitionAnimation$AnimationInfo;->location:[I

    aget v0, v0, v2

    int-to-float v0, v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 340
    iget-object v0, p1, Lcom/android/launcher3/folder/FolderTransitionAnimation$AnimationInfo;->scaleBy:[F

    aget v0, v0, v1

    invoke-virtual {p2, v0}, Landroid/view/View;->setScaleX(F)V

    .line 341
    iget-object v0, p1, Lcom/android/launcher3/folder/FolderTransitionAnimation$AnimationInfo;->scaleBy:[F

    aget v0, v0, v2

    invoke-virtual {p2, v0}, Landroid/view/View;->setScaleY(F)V

    .line 342
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->setAlpha(F)V

    .line 343
    return-void
.end method


# virtual methods
.method public getDragAnimation(ZLcom/android/launcher3/folder/view/FolderView;Z)Landroid/animation/AnimatorSet;
    .locals 8
    .param p1, "animated"    # Z
    .param p2, "openFolder"    # Lcom/android/launcher3/folder/view/FolderView;
    .param p3, "enter"    # Z

    .prologue
    const/4 v6, 0x4

    const/4 v7, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    .line 198
    if-eqz p2, :cond_3

    .line 199
    invoke-virtual {p2}, Lcom/android/launcher3/folder/view/FolderView;->getBorder()Landroid/view/View;

    move-result-object v0

    .line 200
    .local v0, "border":Landroid/view/View;
    invoke-virtual {p2}, Lcom/android/launcher3/folder/view/FolderView;->getHeader()Landroid/view/View;

    move-result-object v1

    .line 202
    .local v1, "header":Landroid/view/View;
    invoke-direct {p0}, Lcom/android/launcher3/folder/FolderTransitionAnimation;->cancelStateAnimation()V

    .line 203
    if-eqz p1, :cond_7

    .line 204
    invoke-static {}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    .line 206
    if-eqz v0, :cond_0

    .line 208
    if-eqz p3, :cond_4

    move v3, v4

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 209
    if-eqz p3, :cond_5

    move v3, v6

    :goto_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 217
    :cond_0
    if-eqz v1, :cond_1

    .line 218
    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    invoke-virtual {v3}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x1

    new-array v6, v6, [F

    if-eqz p3, :cond_6

    :goto_2
    aput v4, v6, v7

    invoke-static {v1, v3, v6}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 219
    .local v2, "headerAnim":Landroid/animation/Animator;
    iget v3, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation;->mStateTransitionDuration:I

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 220
    iget-object v3, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v3, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 223
    .end local v2    # "headerAnim":Landroid/animation/Animator;
    :cond_1
    iget-object v3, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    new-instance v4, Lcom/android/launcher3/folder/FolderTransitionAnimation$2;

    invoke-direct {v4, p0, p3, v0, v1}, Lcom/android/launcher3/folder/FolderTransitionAnimation$2;-><init>(Lcom/android/launcher3/folder/FolderTransitionAnimation;ZLandroid/view/View;Landroid/view/View;)V

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 260
    :cond_2
    :goto_3
    invoke-direct {p0, p2, p3}, Lcom/android/launcher3/folder/FolderTransitionAnimation;->changeDragBackground(Lcom/android/launcher3/folder/view/FolderView;Z)V

    .line 263
    .end local v0    # "border":Landroid/view/View;
    .end local v1    # "header":Landroid/view/View;
    :cond_3
    iget-object v3, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    return-object v3

    .restart local v0    # "border":Landroid/view/View;
    .restart local v1    # "header":Landroid/view/View;
    :cond_4
    move v3, v5

    .line 208
    goto :goto_0

    :cond_5
    move v3, v7

    .line 209
    goto :goto_1

    :cond_6
    move v4, v5

    .line 218
    goto :goto_2

    .line 250
    :cond_7
    if-eqz v0, :cond_8

    .line 251
    if-eqz p3, :cond_9

    move v3, v4

    :goto_4
    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 252
    if-eqz p3, :cond_a

    move v3, v6

    :goto_5
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 254
    :cond_8
    if-eqz v1, :cond_2

    .line 255
    if-eqz p3, :cond_b

    :goto_6
    invoke-virtual {v1, v4}, Landroid/view/View;->setAlpha(F)V

    .line 256
    if-eqz p3, :cond_c

    :goto_7
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_9
    move v3, v5

    .line 251
    goto :goto_4

    :cond_a
    move v3, v7

    .line 252
    goto :goto_5

    :cond_b
    move v4, v5

    .line 255
    goto :goto_6

    :cond_c
    move v6, v7

    .line 256
    goto :goto_7
.end method

.method public getEnterFromFolderAddAppsAnimation(Lcom/android/launcher3/folder/view/FolderView;Ljava/util/ArrayList;)Landroid/animation/Animator;
    .locals 1
    .param p1, "openFolder"    # Lcom/android/launcher3/folder/view/FolderView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/folder/view/FolderView;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/IconInfo;",
            ">;)",
            "Landroid/animation/Animator;"
        }
    .end annotation

    .prologue
    .line 152
    .local p2, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    invoke-direct {p0}, Lcom/android/launcher3/folder/FolderTransitionAnimation;->cancelStageAnimation()V

    .line 153
    if-eqz p1, :cond_0

    .line 154
    invoke-static {}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    .line 155
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    invoke-direct {p0, v0, p1}, Lcom/android/launcher3/folder/FolderTransitionAnimation;->animateFadeIn(Landroid/animation/AnimatorSet;Landroid/view/View;)V

    .line 156
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    invoke-direct {p0, v0, p1, p2}, Lcom/android/launcher3/folder/FolderTransitionAnimation;->animateAddItemStart(Landroid/animation/AnimatorSet;Lcom/android/launcher3/folder/view/FolderView;Ljava/util/ArrayList;)V

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method public getEnterFromHomeOrAppsAnimation(Lcom/android/launcher3/folder/view/FolderView;Lcom/android/launcher3/folder/view/FolderIconView;)Landroid/animation/Animator;
    .locals 6
    .param p1, "openFolder"    # Lcom/android/launcher3/folder/view/FolderView;
    .param p2, "folderIconView"    # Lcom/android/launcher3/folder/view/FolderIconView;

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/android/launcher3/folder/FolderTransitionAnimation;->cancelStageAnimation()V

    .line 134
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 135
    invoke-static {}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    .line 137
    new-instance v0, Lcom/android/launcher3/folder/FolderTransitionAnimation$AnimationInfo;

    invoke-direct {v0}, Lcom/android/launcher3/folder/FolderTransitionAnimation$AnimationInfo;-><init>()V

    .line 138
    .local v0, "animInfo":Lcom/android/launcher3/folder/FolderTransitionAnimation$AnimationInfo;
    invoke-direct {p0, v0, p1, p2}, Lcom/android/launcher3/folder/FolderTransitionAnimation;->computeAnimationInfo(Lcom/android/launcher3/folder/FolderTransitionAnimation$AnimationInfo;Lcom/android/launcher3/folder/view/FolderView;Lcom/android/launcher3/folder/view/FolderIconView;)Z

    move-result v1

    .line 139
    .local v1, "computed":Z
    if-eqz v1, :cond_1

    .line 140
    invoke-direct {p0, v0, p1}, Lcom/android/launcher3/folder/FolderTransitionAnimation;->prepareOpenAnimation(Lcom/android/launcher3/folder/FolderTransitionAnimation$AnimationInfo;Landroid/view/View;)V

    .line 141
    iget-object v2, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    iget v3, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation;->mFolderExpandDuration:I

    int-to-long v4, v3

    invoke-direct {p0, v2, p1, v4, v5}, Lcom/android/launcher3/folder/FolderTransitionAnimation;->animateOpen(Landroid/animation/AnimatorSet;Landroid/view/View;J)V

    .line 142
    iget-object v2, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation;->mIconAnim:Lcom/android/launcher3/folder/FolderTransitionAnimation$FakeFolderIconAnimation;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, p2, v0, v3}, Lcom/android/launcher3/folder/FolderTransitionAnimation$FakeFolderIconAnimation;->prepareAimation(Landroid/view/View;Lcom/android/launcher3/folder/view/FolderIconView;Lcom/android/launcher3/folder/FolderTransitionAnimation$AnimationInfo;Z)V

    .line 143
    iget-object v2, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation;->mIconAnim:Lcom/android/launcher3/folder/FolderTransitionAnimation$FakeFolderIconAnimation;

    iget-object v3, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    iget v4, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation;->mFolderExpandDuration:I

    int-to-long v4, v4

    invoke-virtual {v2, v3, p2, v4, v5}, Lcom/android/launcher3/folder/FolderTransitionAnimation$FakeFolderIconAnimation;->animateOpen(Landroid/animation/AnimatorSet;Landroid/view/View;J)V

    .line 148
    .end local v0    # "animInfo":Lcom/android/launcher3/folder/FolderTransitionAnimation$AnimationInfo;
    .end local v1    # "computed":Z
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    return-object v2

    .line 145
    .restart local v0    # "animInfo":Lcom/android/launcher3/folder/FolderTransitionAnimation$AnimationInfo;
    .restart local v1    # "computed":Z
    :cond_1
    iget-object v2, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    invoke-direct {p0, v2, p1}, Lcom/android/launcher3/folder/FolderTransitionAnimation;->animateFadeIn(Landroid/animation/AnimatorSet;Landroid/view/View;)V

    goto :goto_0
.end method

.method public getEnterFromWidgetAnimation(Lcom/android/launcher3/folder/view/FolderView;)Landroid/animation/Animator;
    .locals 1
    .param p1, "openFolder"    # Lcom/android/launcher3/folder/view/FolderView;

    .prologue
    .line 267
    invoke-direct {p0}, Lcom/android/launcher3/folder/FolderTransitionAnimation;->cancelStageAnimation()V

    .line 268
    if-eqz p1, :cond_0

    .line 269
    invoke-static {}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    .line 270
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    invoke-direct {p0, v0, p1}, Lcom/android/launcher3/folder/FolderTransitionAnimation;->animateFadeIn(Landroid/animation/AnimatorSet;Landroid/view/View;)V

    .line 272
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method public getExitToFolderAddAppsAnimation(Lcom/android/launcher3/folder/view/FolderView;)Landroid/animation/Animator;
    .locals 1
    .param p1, "openFolder"    # Lcom/android/launcher3/folder/view/FolderView;

    .prologue
    .line 189
    invoke-direct {p0}, Lcom/android/launcher3/folder/FolderTransitionAnimation;->cancelStageAnimation()V

    .line 190
    if-eqz p1, :cond_0

    .line 191
    invoke-static {}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    .line 192
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    invoke-direct {p0, v0, p1}, Lcom/android/launcher3/folder/FolderTransitionAnimation;->animateFadeOut(Landroid/animation/AnimatorSet;Landroid/view/View;)V

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method public getExitToHomeOrAppsAnimation(Lcom/android/launcher3/folder/view/FolderView;Lcom/android/launcher3/folder/view/FolderIconView;)Landroid/animation/Animator;
    .locals 6
    .param p1, "openFolder"    # Lcom/android/launcher3/folder/view/FolderView;
    .param p2, "folderIconView"    # Lcom/android/launcher3/folder/view/FolderIconView;

    .prologue
    .line 162
    invoke-direct {p0}, Lcom/android/launcher3/folder/FolderTransitionAnimation;->cancelStageAnimation()V

    .line 163
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 164
    invoke-static {}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    .line 166
    new-instance v0, Lcom/android/launcher3/folder/FolderTransitionAnimation$AnimationInfo;

    invoke-direct {v0}, Lcom/android/launcher3/folder/FolderTransitionAnimation$AnimationInfo;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation;->mAnimInfoForClosing:Lcom/android/launcher3/folder/FolderTransitionAnimation$AnimationInfo;

    .line 167
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation;->mAnimInfoForClosing:Lcom/android/launcher3/folder/FolderTransitionAnimation$AnimationInfo;

    invoke-direct {p0, v0, p1, p2}, Lcom/android/launcher3/folder/FolderTransitionAnimation;->computeAnimationInfo(Lcom/android/launcher3/folder/FolderTransitionAnimation$AnimationInfo;Lcom/android/launcher3/folder/view/FolderView;Lcom/android/launcher3/folder/view/FolderIconView;)Z

    .line 169
    iget-object v1, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    iget v0, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation;->mFolderCloseDuration:I

    int-to-long v4, v0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/folder/FolderTransitionAnimation;->animateCloseToPosition(Landroid/animation/AnimatorSet;Lcom/android/launcher3/folder/view/FolderView;Lcom/android/launcher3/folder/view/FolderIconView;J)V

    .line 170
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation;->mIconAnim:Lcom/android/launcher3/folder/FolderTransitionAnimation$FakeFolderIconAnimation;

    iget-object v1, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation;->mAnimInfoForClosing:Lcom/android/launcher3/folder/FolderTransitionAnimation$AnimationInfo;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/android/launcher3/folder/FolderTransitionAnimation$FakeFolderIconAnimation;->prepareAimation(Landroid/view/View;Lcom/android/launcher3/folder/view/FolderIconView;Lcom/android/launcher3/folder/FolderTransitionAnimation$AnimationInfo;Z)V

    .line 171
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation;->mIconAnim:Lcom/android/launcher3/folder/FolderTransitionAnimation$FakeFolderIconAnimation;

    iget-object v1, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    iget v2, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation;->mFolderCloseDuration:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, p2, v2, v3}, Lcom/android/launcher3/folder/FolderTransitionAnimation$FakeFolderIconAnimation;->animateClose(Landroid/animation/AnimatorSet;Landroid/view/View;J)V

    .line 173
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/android/launcher3/folder/FolderTransitionAnimation$1;

    invoke-direct {v1, p0}, Lcom/android/launcher3/folder/FolderTransitionAnimation$1;-><init>(Lcom/android/launcher3/folder/FolderTransitionAnimation;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method public getExitToWidgetAnimation(Lcom/android/launcher3/folder/view/FolderView;)Landroid/animation/Animator;
    .locals 1
    .param p1, "openFolder"    # Lcom/android/launcher3/folder/view/FolderView;

    .prologue
    .line 276
    invoke-direct {p0}, Lcom/android/launcher3/folder/FolderTransitionAnimation;->cancelStageAnimation()V

    .line 277
    if-eqz p1, :cond_0

    .line 278
    invoke-static {}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    .line 279
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    invoke-direct {p0, v0, p1}, Lcom/android/launcher3/folder/FolderTransitionAnimation;->animateFadeOut(Landroid/animation/AnimatorSet;Landroid/view/View;)V

    .line 281
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    return-object v0
.end method
