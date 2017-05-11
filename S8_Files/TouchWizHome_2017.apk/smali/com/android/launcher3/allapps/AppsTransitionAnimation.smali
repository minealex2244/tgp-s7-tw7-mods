.class public Lcom/android/launcher3/allapps/AppsTransitionAnimation;
.super Ljava/lang/Object;
.source "AppsTransitionAnimation.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "AppsTransitionAnimation"


# instance fields
.field private final mAppsContentView:Landroid/view/ViewGroup;

.field private final mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

.field private final mAppsPageIndicatorView:Landroid/view/View;

.field private final mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

.field private mDragDrakenAlpha:F

.field private mFolderBgGrowFactor:F

.field private final mLauncher:Lcom/android/launcher3/Launcher;

.field private final mSineInOut33:Landroid/view/animation/Interpolator;

.field private final mSineInOut70:Landroid/view/animation/Interpolator;

.field private final mSineInOut80:Landroid/view/animation/Interpolator;

.field private mStageAnimator:Landroid/animation/AnimatorSet;

.field private mStateAnimator:Landroid/animation/AnimatorSet;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/allapps/controller/AppsController;)V
    .locals 4
    .param p1, "launcher"    # Lcom/android/launcher3/Launcher;
    .param p2, "appsController"    # Lcom/android/launcher3/allapps/controller/AppsController;

    .prologue
    const/4 v3, 0x1

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    const/16 v1, 0x22

    invoke-static {v1}, Lcom/android/launcher3/util/ViInterpolator;->getInterploator(I)Landroid/view/animation/PathInterpolator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mSineInOut80:Landroid/view/animation/Interpolator;

    .line 109
    const/16 v1, 0x21

    invoke-static {v1}, Lcom/android/launcher3/util/ViInterpolator;->getInterploator(I)Landroid/view/animation/PathInterpolator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mSineInOut70:Landroid/view/animation/Interpolator;

    .line 110
    const/16 v1, 0x1e

    invoke-static {v1}, Lcom/android/launcher3/util/ViInterpolator;->getInterploator(I)Landroid/view/animation/PathInterpolator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mSineInOut33:Landroid/view/animation/Interpolator;

    .line 120
    iput-object p1, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 121
    iput-object p2, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    .line 122
    iget-object v1, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/controller/AppsController;->getContainerView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsContentView:Landroid/view/ViewGroup;

    .line 123
    iget-object v1, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/controller/AppsController;->getAppsPagedView()Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    .line 124
    iget-object v1, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/controller/AppsController;->getAppsPageIndicatorView()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsPageIndicatorView:Landroid/view/View;

    .line 125
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 126
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f0b002b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    iput v1, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mDragDrakenAlpha:F

    .line 127
    const v1, 0x7f0e0004

    invoke-virtual {v0, v1, v3, v3}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v1

    iput v1, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mFolderBgGrowFactor:F

    .line 128
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/allapps/AppsTransitionAnimation;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/allapps/AppsTransitionAnimation;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsContentView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/launcher3/allapps/AppsTransitionAnimation;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/allapps/AppsTransitionAnimation;
    .param p1, "x1"    # Landroid/animation/AnimatorSet;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/launcher3/allapps/AppsTransitionAnimation;)Lcom/android/launcher3/allapps/controller/AppsController;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/allapps/AppsTransitionAnimation;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/launcher3/allapps/AppsTransitionAnimation;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/allapps/AppsTransitionAnimation;
    .param p1, "x1"    # Landroid/animation/AnimatorSet;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/launcher3/allapps/AppsTransitionAnimation;)Lcom/android/launcher3/Launcher;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/allapps/AppsTransitionAnimation;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    return-object v0
.end method

.method private animateBackgroundDarken(Landroid/animation/AnimatorSet;ZII)V
    .locals 8
    .param p1, "animatorSet"    # Landroid/animation/AnimatorSet;
    .param p2, "animated"    # Z
    .param p3, "state"    # I
    .param p4, "duration"    # I

    .prologue
    const/4 v7, 0x1

    .line 985
    iget-object v4, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/common/view/DragLayer;

    move-result-object v1

    .line 986
    .local v1, "dragLayer":Lcom/android/launcher3/common/view/DragLayer;
    invoke-virtual {v1}, Lcom/android/launcher3/common/view/DragLayer;->getBackgroundAlpha()F

    move-result v3

    .line 987
    .local v3, "startAlpha":F
    const/4 v2, 0x0

    .line 989
    .local v2, "finalAlpha":F
    if-ne p3, v7, :cond_0

    .line 990
    iget v2, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mDragDrakenAlpha:F

    .line 993
    :cond_0
    sub-float v4, v2, v3

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_1

    .line 994
    if-eqz p2, :cond_2

    if-eqz p1, :cond_2

    .line 995
    const-string v4, "backgroundAlpha"

    const/4 v5, 0x2

    new-array v5, v5, [F

    const/4 v6, 0x0

    aput v3, v5, v6

    aput v2, v5, v7

    invoke-static {v1, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 997
    .local v0, "bgAnim":Landroid/animation/ValueAnimator;
    int-to-long v4, p4

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 998
    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1003
    .end local v0    # "bgAnim":Landroid/animation/ValueAnimator;
    :cond_1
    :goto_0
    return-void

    .line 1000
    :cond_2
    invoke-virtual {v1, v2}, Lcom/android/launcher3/common/view/DragLayer;->setBackgroundAlpha(F)V

    goto :goto_0
.end method

.method private cancelStageAnimation()V
    .locals 4

    .prologue
    .line 969
    iget-object v0, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 970
    iget-object v0, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 971
    iget-object v0, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 973
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    .line 974
    return-void
.end method

.method private cancelStateAnimation()V
    .locals 4

    .prologue
    .line 977
    iget-object v0, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 978
    iget-object v0, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 979
    iget-object v0, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 981
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    .line 982
    return-void
.end method

.method private changeCellLayoutBackground(IZ)V
    .locals 8
    .param p1, "state"    # I
    .param p2, "enter"    # Z

    .prologue
    const/4 v6, 0x0

    .line 1006
    iget-object v7, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v7}, Lcom/android/launcher3/allapps/controller/AppsController;->getAppsPagedView()Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-result-object v0

    .line 1007
    .local v0, "appsPagedView":Lcom/android/launcher3/allapps/view/AppsPagedView;
    if-eqz p2, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 1008
    .local v1, "backgroundAlpha":F
    :goto_0
    invoke-virtual {v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getChildCount()I

    move-result v2

    .line 1009
    .local v2, "childCount":I
    invoke-virtual {v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCurrentPage()I

    move-result v4

    .line 1011
    .local v4, "currentPage":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v2, :cond_3

    .line 1012
    invoke-virtual {v0, v5}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/allapps/view/AppsViewCellLayout;

    .line 1013
    .local v3, "cl":Lcom/android/launcher3/allapps/view/AppsViewCellLayout;
    if-eqz p2, :cond_1

    .line 1014
    invoke-virtual {v3, p1}, Lcom/android/launcher3/allapps/view/AppsViewCellLayout;->setBgImage(I)V

    .line 1019
    :goto_2
    if-ne v5, v4, :cond_2

    .line 1020
    invoke-virtual {v3, v6}, Lcom/android/launcher3/allapps/view/AppsViewCellLayout;->setBackgroundAlpha(F)V

    .line 1011
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .end local v1    # "backgroundAlpha":F
    .end local v2    # "childCount":I
    .end local v3    # "cl":Lcom/android/launcher3/allapps/view/AppsViewCellLayout;
    .end local v4    # "currentPage":I
    .end local v5    # "i":I
    :cond_0
    move v1, v6

    .line 1007
    goto :goto_0

    .line 1016
    .restart local v1    # "backgroundAlpha":F
    .restart local v2    # "childCount":I
    .restart local v3    # "cl":Lcom/android/launcher3/allapps/view/AppsViewCellLayout;
    .restart local v4    # "currentPage":I
    .restart local v5    # "i":I
    :cond_1
    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Lcom/android/launcher3/allapps/view/AppsViewCellLayout;->setBgImage(I)V

    goto :goto_2

    .line 1022
    :cond_2
    invoke-virtual {v3, v1}, Lcom/android/launcher3/allapps/view/AppsViewCellLayout;->setBackgroundAlpha(F)V

    goto :goto_3

    .line 1025
    .end local v3    # "cl":Lcom/android/launcher3/allapps/view/AppsViewCellLayout;
    :cond_3
    return-void
.end method

.method private changeScreenGridBackground(Lcom/android/launcher3/allapps/view/AppsPagedView;ZZI)V
    .locals 11
    .param p1, "appsPagedView"    # Lcom/android/launcher3/allapps/view/AppsPagedView;
    .param p2, "animated"    # Z
    .param p3, "enter"    # Z
    .param p4, "duration"    # I

    .prologue
    const/4 v10, 0x5

    const/4 v9, 0x0

    .line 1029
    if-eqz p3, :cond_3

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1030
    .local v0, "backgroundAlpha":F
    :goto_0
    invoke-virtual {p1}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getChildCount()I

    move-result v2

    .line 1031
    .local v2, "childCount":I
    invoke-virtual {p1}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCurrentPage()I

    move-result v4

    .line 1033
    .local v4, "currentPage":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v2, :cond_7

    .line 1034
    invoke-virtual {p1, v5}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/allapps/view/AppsViewCellLayout;

    .line 1035
    .local v3, "cl":Lcom/android/launcher3/allapps/view/AppsViewCellLayout;
    if-eqz p2, :cond_5

    .line 1036
    if-eqz p3, :cond_4

    .line 1037
    invoke-virtual {v3, v10}, Lcom/android/launcher3/allapps/view/AppsViewCellLayout;->setBgImage(I)V

    .line 1038
    if-eq v5, v4, :cond_0

    add-int/lit8 v6, v4, -0x1

    if-eq v5, v6, :cond_0

    add-int/lit8 v6, v4, 0x1

    if-eq v5, v6, :cond_0

    .line 1039
    invoke-virtual {v3, v0}, Lcom/android/launcher3/allapps/view/AppsViewCellLayout;->setBackgroundAlpha(F)V

    .line 1048
    :cond_0
    :goto_2
    if-eq v5, v4, :cond_1

    add-int/lit8 v6, v4, -0x1

    if-eq v5, v6, :cond_1

    add-int/lit8 v6, v4, 0x1

    if-ne v5, v6, :cond_2

    .line 1049
    :cond_1
    const-string v6, "backgroundAlpha"

    const/4 v7, 0x2

    new-array v7, v7, [F

    .line 1050
    invoke-virtual {v3}, Lcom/android/launcher3/allapps/view/AppsViewCellLayout;->getBackgroundAlpha()F

    move-result v8

    aput v8, v7, v9

    const/4 v8, 0x1

    aput v0, v7, v8

    .line 1049
    invoke-static {v3, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 1051
    .local v1, "bgAnim":Landroid/animation/ValueAnimator;
    int-to-long v6, p4

    invoke-virtual {v1, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1052
    new-instance v6, Lcom/android/launcher3/allapps/AppsTransitionAnimation$13;

    invoke-direct {v6, p0, p3, v3}, Lcom/android/launcher3/allapps/AppsTransitionAnimation$13;-><init>(Lcom/android/launcher3/allapps/AppsTransitionAnimation;ZLcom/android/launcher3/allapps/view/AppsViewCellLayout;)V

    invoke-virtual {v1, v6}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1060
    iget-object v6, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v6, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1033
    .end local v1    # "bgAnim":Landroid/animation/ValueAnimator;
    :cond_2
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1029
    .end local v0    # "backgroundAlpha":F
    .end local v2    # "childCount":I
    .end local v3    # "cl":Lcom/android/launcher3/allapps/view/AppsViewCellLayout;
    .end local v4    # "currentPage":I
    .end local v5    # "i":I
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 1042
    .restart local v0    # "backgroundAlpha":F
    .restart local v2    # "childCount":I
    .restart local v3    # "cl":Lcom/android/launcher3/allapps/view/AppsViewCellLayout;
    .restart local v4    # "currentPage":I
    .restart local v5    # "i":I
    :cond_4
    if-eq v5, v4, :cond_0

    add-int/lit8 v6, v4, -0x1

    if-eq v5, v6, :cond_0

    add-int/lit8 v6, v4, 0x1

    if-eq v5, v6, :cond_0

    .line 1043
    invoke-virtual {v3, v9}, Lcom/android/launcher3/allapps/view/AppsViewCellLayout;->setBgImage(I)V

    .line 1044
    invoke-virtual {v3, v0}, Lcom/android/launcher3/allapps/view/AppsViewCellLayout;->setBackgroundAlpha(F)V

    goto :goto_2

    .line 1063
    :cond_5
    if-eqz p3, :cond_6

    .line 1064
    invoke-virtual {v3, v10}, Lcom/android/launcher3/allapps/view/AppsViewCellLayout;->setBgImage(I)V

    .line 1068
    :goto_4
    invoke-virtual {v3, v0}, Lcom/android/launcher3/allapps/view/AppsViewCellLayout;->setBackgroundAlpha(F)V

    goto :goto_3

    .line 1066
    :cond_6
    invoke-virtual {v3, v9}, Lcom/android/launcher3/allapps/view/AppsViewCellLayout;->setBgImage(I)V

    goto :goto_4

    .line 1071
    .end local v3    # "cl":Lcom/android/launcher3/allapps/view/AppsViewCellLayout;
    :cond_7
    return-void
.end method

.method private getStageAnimationDuration(II)I
    .locals 6
    .param p1, "fromStage"    # I
    .param p2, "toStage"    # I

    .prologue
    const v5, 0x7f0b001e

    const/4 v4, 0x5

    const/4 v3, 0x1

    const/4 v2, 0x2

    .line 319
    iget-object v1, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 321
    .local v0, "res":Landroid/content/res/Resources;
    if-ne p1, v2, :cond_1

    .line 322
    if-ne p2, v4, :cond_0

    .line 323
    const v1, 0x7f0b0025

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 337
    :goto_0
    return v1

    .line 324
    :cond_0
    if-ne p2, v3, :cond_3

    .line 325
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    goto :goto_0

    .line 327
    :cond_1
    if-ne p1, v3, :cond_2

    .line 328
    if-ne p2, v2, :cond_3

    .line 329
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    goto :goto_0

    .line 331
    :cond_2
    if-ne p1, v4, :cond_3

    .line 332
    if-ne p2, v2, :cond_3

    .line 333
    const v1, 0x7f0b0026

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    goto :goto_0

    .line 337
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getStateAnimationDuration(I)I
    .locals 2
    .param p1, "toState"    # I

    .prologue
    .line 341
    iget-object v1, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 343
    .local v0, "res":Landroid/content/res/Resources;
    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    .line 344
    const v1, 0x7f0b0012

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 357
    :goto_0
    return v1

    .line 345
    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 346
    const v1, 0x7f0b0010

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    goto :goto_0

    .line 347
    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    .line 348
    const v1, 0x7f0b0013

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    goto :goto_0

    .line 349
    :cond_2
    const/4 v1, 0x4

    if-ne p1, v1, :cond_3

    .line 350
    const v1, 0x7f0b0014

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    goto :goto_0

    .line 351
    :cond_3
    if-nez p1, :cond_4

    .line 352
    const v1, 0x7f0b0015

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    goto :goto_0

    .line 353
    :cond_4
    const/4 v1, 0x5

    if-ne p1, v1, :cond_5

    .line 354
    const v1, 0x7f0b0011

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    goto :goto_0

    .line 357
    :cond_5
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getViewInOutAnimator(Ljava/util/HashMap;ILcom/android/launcher3/common/stage/StageEntry;)V
    .locals 18
    .param p2, "duration"    # I
    .param p3, "entry"    # Lcom/android/launcher3/common/stage/StageEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;I",
            "Lcom/android/launcher3/common/stage/StageEntry;",
            ")V"
        }
    .end annotation

    .prologue
    .line 665
    .local p1, "layerViews":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/view/View;Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    if-eqz v11, :cond_0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v11}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getPageCount()I

    move-result v11

    if-nez v11, :cond_1

    .line 666
    :cond_0
    const-string v11, "AppsTransitionAnimation"

    const-string v12, "mStateAnimator is null. It must be created before using ViewAnimator"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    :goto_0
    return-void

    .line 670
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 671
    .local v2, "animateViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v12}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCurrentPage()I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellLayout(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v3

    .line 672
    .local v3, "cellLayout":Lcom/android/launcher3/common/base/view/CellLayout;
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 673
    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 674
    new-instance v4, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;

    invoke-direct {v4, v3}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;-><init>(Landroid/view/View;)V

    .line 675
    .local v4, "cellLayoutAlphaToHide":Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;
    const/4 v11, 0x0

    invoke-virtual {v4, v11}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->alpha(F)Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;

    move-result-object v11

    move/from16 v0, p2

    int-to-long v12, v0

    invoke-virtual {v11, v12, v13}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->setDuration(J)Landroid/animation/Animator;

    .line 676
    new-instance v11, Lcom/android/launcher3/allapps/AppsTransitionAnimation$8;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v11, v0, v1, v2}, Lcom/android/launcher3/allapps/AppsTransitionAnimation$8;-><init>(Lcom/android/launcher3/allapps/AppsTransitionAnimation;Lcom/android/launcher3/common/stage/StageEntry;Ljava/util/ArrayList;)V

    invoke-virtual {v4, v11}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 693
    new-instance v5, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;

    invoke-direct {v5, v3}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;-><init>(Landroid/view/View;)V

    .line 694
    .local v5, "cellLayoutAlphaToShow":Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;
    const/high16 v11, 0x3f800000    # 1.0f

    invoke-virtual {v5, v11}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->alpha(F)Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;

    move-result-object v11

    move/from16 v0, p2

    int-to-long v12, v0

    invoke-virtual {v11, v12, v13}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->setDuration(J)Landroid/animation/Animator;

    .line 696
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v11}, Lcom/android/launcher3/allapps/controller/AppsController;->prepareViewsForReposition()Ljava/util/ArrayList;

    move-result-object v10

    .line 697
    .local v10, "viewsTobeShow":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v7, 0x0

    .local v7, "index":I
    :goto_1
    invoke-virtual {v3}, Lcom/android/launcher3/common/base/view/CellLayout;->getPageChildCount()I

    move-result v11

    if-ge v7, v11, :cond_3

    .line 698
    invoke-virtual {v3, v7}, Lcom/android/launcher3/common/base/view/CellLayout;->getChildOnPageAt(I)Landroid/view/View;

    move-result-object v6

    .line 699
    .local v6, "iconView":Landroid/view/View;
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 700
    invoke-static {}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v8

    .line 701
    .local v8, "scaleDownAnimSet":Landroid/animation/AnimatorSet;
    const/4 v11, 0x2

    new-array v11, v11, [Landroid/animation/Animator;

    const/4 v12, 0x0

    sget-object v13, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    .line 702
    invoke-virtual {v13}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    new-array v14, v14, [F

    const/4 v15, 0x0

    const v16, 0x3f666666    # 0.9f

    aput v16, v14, v15

    invoke-static {v6, v13, v14}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    sget-object v13, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    .line 703
    invoke-virtual {v13}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    new-array v14, v14, [F

    const/4 v15, 0x0

    const v16, 0x3f666666    # 0.9f

    aput v16, v14, v15

    invoke-static {v6, v13, v14}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    aput-object v13, v11, v12

    .line 701
    invoke-virtual {v8, v11}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 704
    invoke-static {}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v9

    .line 705
    .local v9, "scaleUpAnimSet":Landroid/animation/AnimatorSet;
    const/4 v11, 0x2

    new-array v11, v11, [Landroid/animation/Animator;

    const/4 v12, 0x0

    sget-object v13, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    .line 706
    invoke-virtual {v13}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    new-array v14, v14, [F

    const/4 v15, 0x0

    const/high16 v16, 0x3f800000    # 1.0f

    aput v16, v14, v15

    invoke-static {v6, v13, v14}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    sget-object v13, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    .line 707
    invoke-virtual {v13}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    new-array v14, v14, [F

    const/4 v15, 0x0

    const/high16 v16, 0x3f800000    # 1.0f

    aput v16, v14, v15

    invoke-static {v6, v13, v14}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    aput-object v13, v11, v12

    .line 705
    invoke-virtual {v9, v11}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 708
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v11, v8}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v11

    invoke-virtual {v11, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 709
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v11, v9}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v11

    invoke-virtual {v11, v5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v11

    invoke-virtual {v11, v8}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 710
    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 711
    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 697
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 715
    .end local v6    # "iconView":Landroid/view/View;
    .end local v8    # "scaleDownAnimSet":Landroid/animation/AnimatorSet;
    .end local v9    # "scaleUpAnimSet":Landroid/animation/AnimatorSet;
    :cond_3
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    .line 716
    .restart local v6    # "iconView":Landroid/view/View;
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 717
    invoke-static {}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v9

    .line 718
    .restart local v9    # "scaleUpAnimSet":Landroid/animation/AnimatorSet;
    const v12, 0x3f666666    # 0.9f

    invoke-virtual {v6, v12}, Landroid/view/View;->setScaleX(F)V

    .line 719
    const v12, 0x3f666666    # 0.9f

    invoke-virtual {v6, v12}, Landroid/view/View;->setScaleY(F)V

    .line 720
    const/4 v12, 0x2

    new-array v12, v12, [Landroid/animation/Animator;

    const/4 v13, 0x0

    sget-object v14, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    .line 721
    invoke-virtual {v14}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    new-array v15, v15, [F

    const/16 v16, 0x0

    const/high16 v17, 0x3f800000    # 1.0f

    aput v17, v15, v16

    invoke-static {v6, v14, v15}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    sget-object v14, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    .line 722
    invoke-virtual {v14}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    new-array v15, v15, [F

    const/16 v16, 0x0

    const/high16 v17, 0x3f800000    # 1.0f

    aput v17, v15, v16

    invoke-static {v6, v14, v15}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v14

    aput-object v14, v12, v13

    .line 720
    invoke-virtual {v9, v12}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 723
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v12, v9}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v12

    invoke-virtual {v12, v5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_2

    .line 725
    .end local v6    # "iconView":Landroid/view/View;
    .end local v9    # "scaleUpAnimSet":Landroid/animation/AnimatorSet;
    :cond_4
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v11, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 726
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v11, v5}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v11

    invoke-virtual {v11, v4}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto/16 :goto_0
.end method


# virtual methods
.method public getChangeGridAnimation(ZLjava/util/HashMap;Lcom/android/launcher3/common/stage/StageEntry;)Landroid/animation/AnimatorSet;
    .locals 25
    .param p1, "animated"    # Z
    .param p3, "entry"    # Lcom/android/launcher3/common/stage/StageEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/android/launcher3/common/stage/StageEntry;",
            ")",
            "Landroid/animation/AnimatorSet;"
        }
    .end annotation

    .prologue
    .line 362
    .local p2, "layerViews":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/view/View;Ljava/lang/Integer;>;"
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->getStateAnimationDuration(I)I

    move-result v10

    .line 364
    .local v10, "duration":I
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->cancelStateAnimation()V

    .line 365
    if-eqz p1, :cond_6

    .line 366
    invoke-static {}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    .line 367
    const/4 v4, 0x0

    .line 368
    .local v4, "addedListener":Z
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 369
    .local v5, "animateViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher3/allapps/controller/AppsController;->prepareViewsForReposition()Ljava/util/ArrayList;

    move-result-object v17

    .line 370
    .local v17, "viewsTobeShow":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getChildCount()I

    move-result v14

    .line 371
    .local v14, "pageCount":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCurrentPage()I

    move-result v9

    .line 372
    .local v9, "currentPage":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    if-ge v11, v14, :cond_7

    .line 373
    if-eq v11, v9, :cond_0

    add-int/lit8 v18, v9, -0x1

    move/from16 v0, v18

    if-eq v11, v0, :cond_0

    add-int/lit8 v18, v9, 0x1

    move/from16 v0, v18

    if-ne v11, v0, :cond_5

    .line 374
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellLayout(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v6

    .line 375
    .local v6, "cellLayout":Lcom/android/launcher3/common/base/view/CellLayoutChildren;
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 376
    const/16 v18, 0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    new-instance v7, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;

    invoke-direct {v7, v6}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;-><init>(Landroid/view/View;)V

    .line 378
    .local v7, "cellLayoutAlphaToHide":Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->alpha(F)Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;

    move-result-object v18

    int-to-long v0, v10

    move-wide/from16 v20, v0

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->setDuration(J)Landroid/animation/Animator;

    .line 379
    new-instance v8, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;

    invoke-direct {v8, v6}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;-><init>(Landroid/view/View;)V

    .line 380
    .local v8, "cellLayoutAlphaToShow":Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;
    const/high16 v18, 0x3f800000    # 1.0f

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->alpha(F)Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;

    move-result-object v18

    int-to-long v0, v10

    move-wide/from16 v20, v0

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->setDuration(J)Landroid/animation/Animator;

    .line 381
    if-nez v4, :cond_2

    .line 382
    new-instance v18, Lcom/android/launcher3/allapps/AppsTransitionAnimation$3;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, v17

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/android/launcher3/allapps/AppsTransitionAnimation$3;-><init>(Lcom/android/launcher3/allapps/AppsTransitionAnimation;Lcom/android/launcher3/common/stage/StageEntry;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 402
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_1
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_1

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/View;

    .line 403
    .local v12, "iconView":Landroid/view/View;
    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 404
    invoke-static {}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v16

    .line 405
    .local v16, "scaleUpAnimSet":Landroid/animation/AnimatorSet;
    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Landroid/animation/Animator;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    sget-object v21, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    .line 406
    invoke-virtual/range {v21 .. v21}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [F

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/high16 v24, 0x3f800000    # 1.0f

    aput v24, v22, v23

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v12, v0, v1}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x1

    sget-object v21, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    .line 407
    invoke-virtual/range {v21 .. v21}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [F

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/high16 v24, 0x3f800000    # 1.0f

    aput v24, v22, v23

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v12, v0, v1}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v21

    aput-object v21, v19, v20

    .line 405
    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 408
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_1

    .line 410
    .end local v12    # "iconView":Landroid/view/View;
    .end local v16    # "scaleUpAnimSet":Landroid/animation/AnimatorSet;
    :cond_1
    new-instance v18, Lcom/android/launcher3/allapps/AppsTransitionAnimation$4;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5}, Lcom/android/launcher3/allapps/AppsTransitionAnimation$4;-><init>(Lcom/android/launcher3/allapps/AppsTransitionAnimation;Ljava/util/ArrayList;)V

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 420
    const/4 v4, 0x1

    .line 423
    :cond_2
    const/4 v13, 0x0

    .local v13, "index":I
    :goto_2
    invoke-virtual {v6}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v18

    move/from16 v0, v18

    if-ge v13, v0, :cond_4

    .line 424
    invoke-virtual {v6, v13}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 425
    .restart local v12    # "iconView":Landroid/view/View;
    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 426
    invoke-static {}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v15

    .line 427
    .local v15, "scaleDownAnimSet":Landroid/animation/AnimatorSet;
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Landroid/animation/Animator;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    sget-object v20, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    .line 428
    invoke-virtual/range {v20 .. v20}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [F

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const v23, 0x3f666666    # 0.9f

    aput v23, v21, v22

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v12, v0, v1}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x1

    sget-object v20, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    .line 429
    invoke-virtual/range {v20 .. v20}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [F

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const v23, 0x3f666666    # 0.9f

    aput v23, v21, v22

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v12, v0, v1}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v20

    aput-object v20, v18, v19

    .line 427
    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 430
    invoke-static {}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v16

    .line 431
    .restart local v16    # "scaleUpAnimSet":Landroid/animation/AnimatorSet;
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Landroid/animation/Animator;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    sget-object v20, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    .line 432
    invoke-virtual/range {v20 .. v20}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [F

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/high16 v23, 0x3f800000    # 1.0f

    aput v23, v21, v22

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v12, v0, v1}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x1

    sget-object v20, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    .line 433
    invoke-virtual/range {v20 .. v20}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [F

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/high16 v23, 0x3f800000    # 1.0f

    aput v23, v21, v22

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v12, v0, v1}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v20

    aput-object v20, v18, v19

    .line 431
    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 434
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 435
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 436
    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 437
    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 423
    :cond_3
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_2

    .line 440
    .end local v12    # "iconView":Landroid/view/View;
    .end local v15    # "scaleDownAnimSet":Landroid/animation/AnimatorSet;
    .end local v16    # "scaleUpAnimSet":Landroid/animation/AnimatorSet;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 441
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 372
    .end local v6    # "cellLayout":Lcom/android/launcher3/common/base/view/CellLayoutChildren;
    .end local v7    # "cellLayoutAlphaToHide":Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;
    .end local v8    # "cellLayoutAlphaToShow":Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;
    .end local v13    # "index":I
    :cond_5
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    .line 445
    .end local v4    # "addedListener":Z
    .end local v5    # "animateViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v9    # "currentPage":I
    .end local v11    # "i":I
    .end local v14    # "pageCount":I
    .end local v17    # "viewsTobeShow":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/controller/AppsController;->repositionBy(Lcom/android/launcher3/common/stage/StageEntry;)V

    .line 447
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    move-object/from16 v18, v0

    return-object v18
.end method

.method public getChangeViewTypeAnimation(ZLjava/util/HashMap;Lcom/android/launcher3/common/stage/StageEntry;)Landroid/animation/AnimatorSet;
    .locals 1
    .param p1, "animated"    # Z
    .param p3, "data"    # Lcom/android/launcher3/common/stage/StageEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/android/launcher3/common/stage/StageEntry;",
            ")",
            "Landroid/animation/AnimatorSet;"
        }
    .end annotation

    .prologue
    .line 466
    .local p2, "layerViews":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/view/View;Ljava/lang/Integer;>;"
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->getRepositionEnterAnimation(ZLjava/util/HashMap;Lcom/android/launcher3/common/stage/StageEntry;)Landroid/animation/AnimatorSet;

    move-result-object v0

    return-object v0
.end method

.method public getDragAnimation(ZLjava/util/HashMap;ZZ)Landroid/animation/AnimatorSet;
    .locals 10
    .param p1, "animated"    # Z
    .param p3, "enter"    # Z
    .param p4, "withSelect"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;ZZ)",
            "Landroid/animation/AnimatorSet;"
        }
    .end annotation

    .prologue
    .local p2, "layerViews":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/view/View;Ljava/lang/Integer;>;"
    const/4 v6, 0x0

    const/4 v8, 0x1

    .line 746
    invoke-direct {p0, v8}, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->getStateAnimationDuration(I)I

    move-result v1

    .line 747
    .local v1, "duration":I
    if-eqz p3, :cond_0

    const/4 v2, 0x0

    .line 748
    .local v2, "searchBarAlphaValue":F
    :goto_0
    sget-object v7, Lcom/android/launcher3/util/Talk;->INSTANCE:Lcom/android/launcher3/util/Talk;

    invoke-virtual {v7}, Lcom/android/launcher3/util/Talk;->isAccessibilityEnabled()Z

    move-result v0

    .line 750
    .local v0, "accessibilityEnabled":Z
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportAppsSearch()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 751
    iget-object v7, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v7}, Lcom/android/launcher3/allapps/controller/AppsController;->getAppsSearchView()Lcom/android/launcher3/allapps/view/AppsSearchContainerView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->getSearchBarContainerView()Landroid/view/View;

    move-result-object v3

    .line 756
    .local v3, "searchBarContainerView":Landroid/view/View;
    :goto_1
    if-eqz p4, :cond_2

    iget-object v7, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v7}, Lcom/android/launcher3/Launcher;->getMultiSelectManager()Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    move-result-object v7

    .line 757
    invoke-virtual {v7}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->getMultiSelectPanel()Lcom/android/launcher3/common/multiselect/MultiSelectPanel;

    move-result-object v5

    .line 759
    .local v5, "topLayout":Landroid/view/View;
    :goto_2
    invoke-direct {p0, v8, p3}, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->changeCellLayoutBackground(IZ)V

    .line 761
    invoke-direct {p0}, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->cancelStateAnimation()V

    .line 762
    if-eqz p1, :cond_4

    .line 763
    invoke-static {}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v7

    iput-object v7, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    .line 765
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p2, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 767
    new-instance v7, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;

    invoke-direct {v7, v5}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;-><init>(Landroid/view/View;)V

    .line 768
    invoke-virtual {v7, v2}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->alpha(F)Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;

    move-result-object v4

    .line 769
    .local v4, "topBarAlpha":Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;
    new-instance v7, Lcom/android/launcher3/allapps/AlphaUpdateListener;

    invoke-direct {v7, v5, v0}, Lcom/android/launcher3/allapps/AlphaUpdateListener;-><init>(Landroid/view/View;Z)V

    invoke-virtual {v4, v7}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 770
    if-eqz p3, :cond_3

    .line 771
    new-instance v7, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v8, 0x40000000    # 2.0f

    invoke-direct {v7, v8}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v4, v7}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 775
    :goto_3
    int-to-long v8, v1

    invoke-virtual {v4, v8, v9}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->setDuration(J)Landroid/animation/Animator;

    .line 776
    iget-object v7, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v7, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 777
    iget-object v7, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    new-instance v8, Lcom/android/launcher3/allapps/AppsTransitionAnimation$9;

    invoke-direct {v8, p0, v5, p3, v2}, Lcom/android/launcher3/allapps/AppsTransitionAnimation$9;-><init>(Lcom/android/launcher3/allapps/AppsTransitionAnimation;Landroid/view/View;ZF)V

    invoke-virtual {v7, v8}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 790
    iget-object v7, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    invoke-direct {p0, v7, p1, v6, v1}, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->animateBackgroundDarken(Landroid/animation/AnimatorSet;ZII)V

    .line 796
    .end local v4    # "topBarAlpha":Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;
    :goto_4
    iget-object v6, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    return-object v6

    .line 747
    .end local v0    # "accessibilityEnabled":Z
    .end local v2    # "searchBarAlphaValue":F
    .end local v3    # "searchBarContainerView":Landroid/view/View;
    .end local v5    # "topLayout":Landroid/view/View;
    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_0

    .line 753
    .restart local v0    # "accessibilityEnabled":Z
    .restart local v2    # "searchBarAlphaValue":F
    :cond_1
    iget-object v7, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v7}, Lcom/android/launcher3/allapps/controller/AppsController;->getAppsSearchBarView()Lcom/android/launcher3/allapps/view/AppsSearchBar;

    move-result-object v3

    .restart local v3    # "searchBarContainerView":Landroid/view/View;
    goto :goto_1

    :cond_2
    move-object v5, v3

    .line 757
    goto :goto_2

    .line 773
    .restart local v4    # "topBarAlpha":Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;
    .restart local v5    # "topLayout":Landroid/view/View;
    :cond_3
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_3

    .line 793
    .end local v4    # "topBarAlpha":Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;
    :cond_4
    invoke-virtual {v5, v2}, Landroid/view/View;->setAlpha(F)V

    .line 794
    if-eqz p3, :cond_5

    const/16 v6, 0x8

    :cond_5
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4
.end method

.method public getEnterFromFolderAnimation(ZLcom/android/launcher3/common/stage/StageEntry;Ljava/util/HashMap;Landroid/view/View;)Landroid/animation/Animator;
    .locals 11
    .param p1, "animated"    # Z
    .param p2, "data"    # Lcom/android/launcher3/common/stage/StageEntry;
    .param p4, "anchorView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/android/launcher3/common/stage/StageEntry;",
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/view/View;",
            ")",
            "Landroid/animation/Animator;"
        }
    .end annotation

    .prologue
    .line 157
    .local p3, "layerViews":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/view/View;Ljava/lang/Integer;>;"
    sget-object v6, Lcom/android/launcher3/util/Talk;->INSTANCE:Lcom/android/launcher3/util/Talk;

    invoke-virtual {v6}, Lcom/android/launcher3/util/Talk;->isAccessibilityEnabled()Z

    move-result v0

    .line 159
    .local v0, "accessibilityEnabled":Z
    invoke-direct {p0}, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->cancelStageAnimation()V

    .line 160
    if-eqz p1, :cond_2

    .line 161
    invoke-static {}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v6

    iput-object v6, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    .line 162
    const/4 v6, 0x5

    const/4 v7, 0x2

    invoke-direct {p0, v6, v7}, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->getStageAnimationDuration(II)I

    move-result v2

    .line 164
    .local v2, "duration":I
    iget-object v6, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsContentView:Landroid/view/ViewGroup;

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    const/4 v6, 0x2

    new-array v3, v6, [I

    .line 167
    .local v3, "iconLoc":[I
    if-eqz p4, :cond_1

    .line 168
    invoke-virtual {p4, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 169
    const/4 v6, 0x0

    aget v6, v3, v6

    if-gez v6, :cond_0

    const/4 v6, 0x1

    aget v6, v3, v6

    if-gez v6, :cond_0

    .line 170
    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsContentView:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    aput v7, v3, v6

    .line 171
    const/4 v6, 0x1

    iget-object v7, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsContentView:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    aput v7, v3, v6

    .line 177
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsContentView:Landroid/view/ViewGroup;

    const/4 v7, 0x0

    aget v7, v3, v7

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->setPivotX(F)V

    .line 178
    iget-object v6, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsContentView:Landroid/view/ViewGroup;

    const/4 v7, 0x1

    aget v7, v3, v7

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->setPivotY(F)V

    .line 180
    iget-object v6, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsContentView:Landroid/view/ViewGroup;

    sget-object v7, Landroid/view/View;->ALPHA:Landroid/util/Property;

    invoke-virtual {v7}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    new-array v8, v8, [F

    fill-array-data v8, :array_0

    invoke-static {v6, v7, v8}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 181
    .local v1, "alphaAnim":Landroid/animation/Animator;
    int-to-long v6, v2

    invoke-virtual {v1, v6, v7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 182
    iget-object v6, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mSineInOut33:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v6}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 183
    iget-object v6, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v6, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 185
    iget-object v6, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsContentView:Landroid/view/ViewGroup;

    sget-object v7, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    invoke-virtual {v7}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    new-array v8, v8, [F

    const/4 v9, 0x0

    iget v10, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mFolderBgGrowFactor:F

    aput v10, v8, v9

    const/4 v9, 0x1

    const/high16 v10, 0x3f800000    # 1.0f

    aput v10, v8, v9

    invoke-static {v6, v7, v8}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 186
    .local v4, "scaleXAnim":Landroid/animation/Animator;
    int-to-long v6, v2

    invoke-virtual {v4, v6, v7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 187
    iget-object v6, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mSineInOut80:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v6}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 188
    iget-object v6, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v6, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 190
    iget-object v6, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsContentView:Landroid/view/ViewGroup;

    sget-object v7, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    invoke-virtual {v7}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    new-array v8, v8, [F

    const/4 v9, 0x0

    iget v10, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mFolderBgGrowFactor:F

    aput v10, v8, v9

    const/4 v9, 0x1

    const/high16 v10, 0x3f800000    # 1.0f

    aput v10, v8, v9

    invoke-static {v6, v7, v8}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 191
    .local v5, "scaleYAnim":Landroid/animation/Animator;
    int-to-long v6, v2

    invoke-virtual {v5, v6, v7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 192
    iget-object v6, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mSineInOut80:Landroid/view/animation/Interpolator;

    invoke-virtual {v5, v6}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 193
    iget-object v6, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v6, v5}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 195
    iget-object v6, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    new-instance v7, Lcom/android/launcher3/allapps/AppsTransitionAnimation$1;

    invoke-direct {v7, p0}, Lcom/android/launcher3/allapps/AppsTransitionAnimation$1;-><init>(Lcom/android/launcher3/allapps/AppsTransitionAnimation;)V

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 225
    .end local v1    # "alphaAnim":Landroid/animation/Animator;
    .end local v2    # "duration":I
    .end local v3    # "iconLoc":[I
    .end local v4    # "scaleXAnim":Landroid/animation/Animator;
    .end local v5    # "scaleYAnim":Landroid/animation/Animator;
    :goto_1
    iget-object v6, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    return-object v6

    .line 174
    .restart local v2    # "duration":I
    .restart local v3    # "iconLoc":[I
    :cond_1
    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsContentView:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    aput v7, v3, v6

    .line 175
    const/4 v6, 0x1

    iget-object v7, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsContentView:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    aput v7, v3, v6

    goto/16 :goto_0

    .line 221
    .end local v2    # "duration":I
    .end local v3    # "iconLoc":[I
    :cond_2
    iget-object v6, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsContentView:Landroid/view/ViewGroup;

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 222
    iget-object v6, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsContentView:Landroid/view/ViewGroup;

    invoke-static {v6, v0}, Lcom/android/launcher3/allapps/AlphaUpdateListener;->updateVisibility(Landroid/view/View;Z)V

    goto :goto_1

    .line 180
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public getEnterFromHomeAnimation(ZLjava/util/HashMap;)Landroid/animation/Animator;
    .locals 8
    .param p1, "animated"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/animation/Animator;"
        }
    .end annotation

    .prologue
    .local p2, "layerViews":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/view/View;Ljava/lang/Integer;>;"
    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    .line 131
    sget-object v3, Lcom/android/launcher3/util/Talk;->INSTANCE:Lcom/android/launcher3/util/Talk;

    invoke-virtual {v3}, Lcom/android/launcher3/util/Talk;->isAccessibilityEnabled()Z

    move-result v0

    .line 133
    .local v0, "accessibilityEnabled":Z
    invoke-direct {p0}, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->cancelStageAnimation()V

    .line 134
    if-eqz p1, :cond_1

    .line 135
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportTraySwipeInteraction()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 153
    :goto_0
    iget-object v3, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    return-object v3

    .line 138
    :cond_0
    invoke-static {}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    .line 139
    const/4 v3, 0x2

    invoke-direct {p0, v5, v3}, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->getStageAnimationDuration(II)I

    move-result v2

    .line 141
    .local v2, "duration":I
    iget-object v3, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsContentView:Landroid/view/ViewGroup;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    iget-object v3, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsContentView:Landroid/view/ViewGroup;

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    invoke-virtual {v4}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v4

    new-array v5, v5, [F

    const/4 v6, 0x0

    aput v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 144
    .local v1, "alphaAnim":Landroid/animation/Animator;
    int-to-long v4, v2

    invoke-virtual {v1, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 145
    iget-object v3, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v3, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 146
    iget-object v3, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    new-instance v4, Lcom/android/launcher3/allapps/AlphaUpdateListener;

    iget-object v5, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsContentView:Landroid/view/ViewGroup;

    invoke-direct {v4, v5, v0}, Lcom/android/launcher3/allapps/AlphaUpdateListener;-><init>(Landroid/view/View;Z)V

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    .line 149
    .end local v1    # "alphaAnim":Landroid/animation/Animator;
    .end local v2    # "duration":I
    :cond_1
    iget-object v3, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsContentView:Landroid/view/ViewGroup;

    invoke-virtual {v3, v7}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 150
    iget-object v3, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsContentView:Landroid/view/ViewGroup;

    invoke-static {v3, v0}, Lcom/android/launcher3/allapps/AlphaUpdateListener;->updateVisibility(Landroid/view/View;Z)V

    goto :goto_0
.end method

.method public getEnterFromSettingAnim(ZLjava/util/HashMap;)Landroid/animation/Animator;
    .locals 8
    .param p1, "animated"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/animation/Animator;"
        }
    .end annotation

    .prologue
    .local p2, "layerViews":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/view/View;Ljava/lang/Integer;>;"
    const/4 v5, 0x1

    const/high16 v7, 0x3f800000    # 1.0f

    .line 878
    sget-object v3, Lcom/android/launcher3/util/Talk;->INSTANCE:Lcom/android/launcher3/util/Talk;

    invoke-virtual {v3}, Lcom/android/launcher3/util/Talk;->isAccessibilityEnabled()Z

    move-result v0

    .line 880
    .local v0, "accessibilityEnabled":Z
    invoke-direct {p0}, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->cancelStageAnimation()V

    .line 881
    if-eqz p1, :cond_0

    .line 882
    invoke-static {}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    .line 883
    const/4 v3, 0x5

    const/4 v4, 0x2

    invoke-direct {p0, v3, v4}, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->getStageAnimationDuration(II)I

    move-result v2

    .line 885
    .local v2, "duration":I
    iget-object v3, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsContentView:Landroid/view/ViewGroup;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 887
    iget-object v3, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsContentView:Landroid/view/ViewGroup;

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    invoke-virtual {v4}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v4

    new-array v5, v5, [F

    const/4 v6, 0x0

    aput v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 888
    .local v1, "alphaAnim":Landroid/animation/Animator;
    const-wide/16 v4, 0x64

    invoke-virtual {v1, v4, v5}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 889
    int-to-long v4, v2

    invoke-virtual {v1, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 890
    iget-object v3, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mSineInOut33:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 891
    iget-object v3, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v3, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 893
    iget-object v3, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    new-instance v4, Lcom/android/launcher3/allapps/AppsTransitionAnimation$11;

    invoke-direct {v4, p0}, Lcom/android/launcher3/allapps/AppsTransitionAnimation$11;-><init>(Lcom/android/launcher3/allapps/AppsTransitionAnimation;)V

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 920
    .end local v1    # "alphaAnim":Landroid/animation/Animator;
    .end local v2    # "duration":I
    :goto_0
    iget-object v3, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    return-object v3

    .line 916
    :cond_0
    iget-object v3, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsContentView:Landroid/view/ViewGroup;

    invoke-virtual {v3, v7}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 917
    iget-object v3, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsContentView:Landroid/view/ViewGroup;

    invoke-static {v3, v0}, Lcom/android/launcher3/allapps/AlphaUpdateListener;->updateVisibility(Landroid/view/View;Z)V

    .line 918
    iget-object v3, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/common/view/DragLayer;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/android/launcher3/common/view/DragLayer;->setBackgroundImageAlpha(F)V

    goto :goto_0
.end method

.method public getExitToFolderAnimation(ZLjava/util/HashMap;Landroid/view/View;)Landroid/animation/Animator;
    .locals 11
    .param p1, "animated"    # Z
    .param p3, "anchorView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/view/View;",
            ")",
            "Landroid/animation/Animator;"
        }
    .end annotation

    .prologue
    .line 255
    .local p2, "layerViews":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/view/View;Ljava/lang/Integer;>;"
    sget-object v6, Lcom/android/launcher3/util/Talk;->INSTANCE:Lcom/android/launcher3/util/Talk;

    invoke-virtual {v6}, Lcom/android/launcher3/util/Talk;->isAccessibilityEnabled()Z

    move-result v0

    .line 257
    .local v0, "accessibilityEnabled":Z
    invoke-direct {p0}, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->cancelStageAnimation()V

    .line 258
    if-eqz p1, :cond_1

    .line 259
    invoke-static {}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v6

    iput-object v6, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    .line 260
    const/4 v6, 0x2

    const/4 v7, 0x5

    invoke-direct {p0, v6, v7}, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->getStageAnimationDuration(II)I

    move-result v2

    .line 262
    .local v2, "duration":I
    iget-object v6, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsContentView:Landroid/view/ViewGroup;

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p2, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    const/4 v6, 0x2

    new-array v3, v6, [I

    .line 265
    .local v3, "iconLoc":[I
    if-eqz p3, :cond_0

    .line 266
    invoke-virtual {p3, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 271
    :goto_0
    iget-object v6, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsContentView:Landroid/view/ViewGroup;

    const/4 v7, 0x0

    aget v7, v3, v7

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->setPivotX(F)V

    .line 272
    iget-object v6, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsContentView:Landroid/view/ViewGroup;

    const/4 v7, 0x1

    aget v7, v3, v7

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->setPivotY(F)V

    .line 274
    iget-object v6, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsContentView:Landroid/view/ViewGroup;

    sget-object v7, Landroid/view/View;->ALPHA:Landroid/util/Property;

    invoke-virtual {v7}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [F

    const/4 v9, 0x0

    const/4 v10, 0x0

    aput v10, v8, v9

    invoke-static {v6, v7, v8}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 275
    .local v1, "alphaAnim":Landroid/animation/Animator;
    div-int/lit8 v6, v2, 0x2

    int-to-long v6, v6

    invoke-virtual {v1, v6, v7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 276
    iget-object v6, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mSineInOut70:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v6}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 277
    iget-object v6, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v6, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 279
    iget-object v6, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsContentView:Landroid/view/ViewGroup;

    sget-object v7, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    invoke-virtual {v7}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    new-array v8, v8, [F

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    aput v10, v8, v9

    const/4 v9, 0x1

    iget v10, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mFolderBgGrowFactor:F

    aput v10, v8, v9

    invoke-static {v6, v7, v8}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 280
    .local v4, "scaleXAnim":Landroid/animation/Animator;
    int-to-long v6, v2

    invoke-virtual {v4, v6, v7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 281
    iget-object v6, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mSineInOut80:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v6}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 282
    iget-object v6, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v6, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 284
    iget-object v6, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsContentView:Landroid/view/ViewGroup;

    sget-object v7, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    invoke-virtual {v7}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    new-array v8, v8, [F

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    aput v10, v8, v9

    const/4 v9, 0x1

    iget v10, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mFolderBgGrowFactor:F

    aput v10, v8, v9

    invoke-static {v6, v7, v8}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 285
    .local v5, "scaleYAnim":Landroid/animation/Animator;
    int-to-long v6, v2

    invoke-virtual {v5, v6, v7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 286
    iget-object v6, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mSineInOut80:Landroid/view/animation/Interpolator;

    invoke-virtual {v5, v6}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 287
    iget-object v6, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v6, v5}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 289
    iget-object v6, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    new-instance v7, Lcom/android/launcher3/allapps/AppsTransitionAnimation$2;

    invoke-direct {v7, p0}, Lcom/android/launcher3/allapps/AppsTransitionAnimation$2;-><init>(Lcom/android/launcher3/allapps/AppsTransitionAnimation;)V

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 315
    .end local v1    # "alphaAnim":Landroid/animation/Animator;
    .end local v2    # "duration":I
    .end local v3    # "iconLoc":[I
    .end local v4    # "scaleXAnim":Landroid/animation/Animator;
    .end local v5    # "scaleYAnim":Landroid/animation/Animator;
    :goto_1
    iget-object v6, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    return-object v6

    .line 268
    .restart local v2    # "duration":I
    .restart local v3    # "iconLoc":[I
    :cond_0
    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsContentView:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    aput v7, v3, v6

    .line 269
    const/4 v6, 0x1

    iget-object v7, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsContentView:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    aput v7, v3, v6

    goto/16 :goto_0

    .line 311
    .end local v2    # "duration":I
    .end local v3    # "iconLoc":[I
    :cond_1
    iget-object v6, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsContentView:Landroid/view/ViewGroup;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 312
    iget-object v6, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsContentView:Landroid/view/ViewGroup;

    invoke-static {v6, v0}, Lcom/android/launcher3/allapps/AlphaUpdateListener;->updateVisibility(Landroid/view/View;Z)V

    goto :goto_1
.end method

.method public getExitToHomeAnimation(ZLjava/util/HashMap;)Landroid/animation/Animator;
    .locals 8
    .param p1, "animated"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/animation/Animator;"
        }
    .end annotation

    .prologue
    .local p2, "layerViews":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/view/View;Ljava/lang/Integer;>;"
    const/4 v7, 0x0

    const/4 v5, 0x1

    .line 229
    sget-object v3, Lcom/android/launcher3/util/Talk;->INSTANCE:Lcom/android/launcher3/util/Talk;

    invoke-virtual {v3}, Lcom/android/launcher3/util/Talk;->isAccessibilityEnabled()Z

    move-result v0

    .line 231
    .local v0, "accessibilityEnabled":Z
    invoke-direct {p0}, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->cancelStageAnimation()V

    .line 232
    if-eqz p1, :cond_1

    .line 233
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportTraySwipeInteraction()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 251
    :goto_0
    iget-object v3, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    return-object v3

    .line 236
    :cond_0
    invoke-static {}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    .line 237
    const/4 v3, 0x2

    invoke-direct {p0, v3, v5}, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->getStageAnimationDuration(II)I

    move-result v2

    .line 239
    .local v2, "duration":I
    iget-object v3, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsContentView:Landroid/view/ViewGroup;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    iget-object v3, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsContentView:Landroid/view/ViewGroup;

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    invoke-virtual {v4}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v4

    new-array v5, v5, [F

    const/4 v6, 0x0

    aput v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 242
    .local v1, "alphaAnim":Landroid/animation/Animator;
    int-to-long v4, v2

    invoke-virtual {v1, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 243
    iget-object v3, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v3, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 244
    iget-object v3, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    new-instance v4, Lcom/android/launcher3/allapps/AlphaUpdateListener;

    iget-object v5, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsContentView:Landroid/view/ViewGroup;

    invoke-direct {v4, v5, v0}, Lcom/android/launcher3/allapps/AlphaUpdateListener;-><init>(Landroid/view/View;Z)V

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    .line 247
    .end local v1    # "alphaAnim":Landroid/animation/Animator;
    .end local v2    # "duration":I
    :cond_1
    iget-object v3, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsContentView:Landroid/view/ViewGroup;

    invoke-virtual {v3, v7}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 248
    iget-object v3, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsContentView:Landroid/view/ViewGroup;

    invoke-static {v3, v0}, Lcom/android/launcher3/allapps/AlphaUpdateListener;->updateVisibility(Landroid/view/View;Z)V

    goto :goto_0
.end method

.method public getExitToWidgetAnim(ZLjava/util/HashMap;)Landroid/animation/Animator;
    .locals 8
    .param p1, "animated"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/animation/Animator;"
        }
    .end annotation

    .prologue
    .local p2, "layerViews":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/view/View;Ljava/lang/Integer;>;"
    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 924
    sget-object v3, Lcom/android/launcher3/util/Talk;->INSTANCE:Lcom/android/launcher3/util/Talk;

    invoke-virtual {v3}, Lcom/android/launcher3/util/Talk;->isAccessibilityEnabled()Z

    move-result v0

    .line 926
    .local v0, "accessibilityEnabled":Z
    invoke-direct {p0}, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->cancelStageAnimation()V

    .line 927
    if-eqz p1, :cond_0

    .line 928
    invoke-static {}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    .line 929
    const/4 v3, 0x5

    const/4 v4, 0x2

    invoke-direct {p0, v3, v4}, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->getStageAnimationDuration(II)I

    move-result v2

    .line 931
    .local v2, "duration":I
    iget-object v3, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsContentView:Landroid/view/ViewGroup;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 933
    iget-object v3, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsContentView:Landroid/view/ViewGroup;

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    invoke-virtual {v4}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v4

    new-array v5, v5, [F

    const/4 v6, 0x0

    aput v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 934
    .local v1, "alphaAnim":Landroid/animation/Animator;
    int-to-long v4, v2

    invoke-virtual {v1, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 935
    iget-object v3, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mSineInOut33:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 936
    iget-object v3, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v3, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 938
    iget-object v3, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    new-instance v4, Lcom/android/launcher3/allapps/AppsTransitionAnimation$12;

    invoke-direct {v4, p0}, Lcom/android/launcher3/allapps/AppsTransitionAnimation$12;-><init>(Lcom/android/launcher3/allapps/AppsTransitionAnimation;)V

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 965
    .end local v1    # "alphaAnim":Landroid/animation/Animator;
    .end local v2    # "duration":I
    :goto_0
    iget-object v3, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    return-object v3

    .line 961
    :cond_0
    iget-object v3, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsContentView:Landroid/view/ViewGroup;

    invoke-virtual {v3, v7}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 962
    iget-object v3, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/common/view/DragLayer;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/android/launcher3/common/view/DragLayer;->setBackgroundImageAlpha(F)V

    .line 963
    iget-object v3, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsContentView:Landroid/view/ViewGroup;

    invoke-static {v3, v0}, Lcom/android/launcher3/allapps/AlphaUpdateListener;->updateVisibility(Landroid/view/View;Z)V

    goto :goto_0
.end method

.method public getRepositionEnterAnimation(ZLjava/util/HashMap;Lcom/android/launcher3/common/stage/StageEntry;)Landroid/animation/AnimatorSet;
    .locals 2
    .param p1, "animated"    # Z
    .param p3, "data"    # Lcom/android/launcher3/common/stage/StageEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/android/launcher3/common/stage/StageEntry;",
            ")",
            "Landroid/animation/AnimatorSet;"
        }
    .end annotation

    .prologue
    .line 452
    .local p2, "layerViews":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/view/View;Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->getStateAnimationDuration(I)I

    move-result v0

    .line 454
    .local v0, "duration":I
    invoke-direct {p0}, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->cancelStateAnimation()V

    .line 455
    if-eqz p1, :cond_0

    .line 456
    invoke-static {}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    .line 457
    invoke-direct {p0, p2, v0, p3}, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->getViewInOutAnimator(Ljava/util/HashMap;ILcom/android/launcher3/common/stage/StageEntry;)V

    .line 461
    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    return-object v1

    .line 459
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v1, p3}, Lcom/android/launcher3/allapps/controller/AppsController;->repositionBy(Lcom/android/launcher3/common/stage/StageEntry;)V

    goto :goto_0
.end method

.method public getScreenGridEnterExitAnimation(ZLjava/util/HashMap;Lcom/android/launcher3/common/stage/StageEntry;Z)Landroid/animation/AnimatorSet;
    .locals 30
    .param p1, "animated"    # Z
    .param p3, "data"    # Lcom/android/launcher3/common/stage/StageEntry;
    .param p4, "enter"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/android/launcher3/common/stage/StageEntry;",
            "Z)",
            "Landroid/animation/AnimatorSet;"
        }
    .end annotation

    .prologue
    .line 471
    .local p2, "layerViews":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/view/View;Ljava/lang/Integer;>;"
    sget-object v4, Lcom/android/launcher3/util/Talk;->INSTANCE:Lcom/android/launcher3/util/Talk;

    invoke-virtual {v4}, Lcom/android/launcher3/util/Talk;->isAccessibilityEnabled()Z

    move-result v11

    .line 472
    .local v11, "accessibilityEnabled":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    .line 473
    .local v25, "res":Landroid/content/res/Resources;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/controller/AppsController;->getAppsPagedView()Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-result-object v12

    .line 475
    .local v12, "appsPagedView":Lcom/android/launcher3/allapps/view/AppsPagedView;
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportAppsSearch()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 476
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/controller/AppsController;->getAppsSearchView()Lcom/android/launcher3/allapps/view/AppsSearchContainerView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->getSearchBarContainerView()Landroid/view/View;

    move-result-object v6

    .line 480
    .local v6, "searchBarContainerView":Landroid/view/View;
    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/controller/AppsController;->getAppsScreenGridPanel()Lcom/android/launcher3/allapps/AppsScreenGridPanel;

    move-result-object v8

    .line 481
    .local v8, "appsScreengridPanel":Lcom/android/launcher3/allapps/AppsScreenGridPanel;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getPageIndicator()Lcom/android/launcher3/common/view/PageIndicator;

    move-result-object v21

    .line 482
    .local v21, "pageIndicator":Lcom/android/launcher3/common/view/PageIndicator;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/controller/AppsController;->getAppsScreenGridPanel()Lcom/android/launcher3/allapps/AppsScreenGridPanel;

    move-result-object v4

    .line 483
    invoke-virtual {v4}, Lcom/android/launcher3/allapps/AppsScreenGridPanel;->getScreenGridTopConatiner()Landroid/view/View;

    move-result-object v10

    .line 484
    .local v10, "appsScreenGridTopContainer":Landroid/view/View;
    const/4 v4, 0x5

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->getStateAnimationDuration(I)I

    move-result v19

    .line 485
    .local v19, "duration":I
    if-eqz p4, :cond_4

    const v15, 0x3f2b851f    # 0.67f

    .line 486
    .local v15, "appsPagedViewShrinkFactor":F
    :goto_1
    const v4, 0x7f0900a5

    .line 487
    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v0, v4

    move/from16 v16, v0

    .line 488
    .local v16, "appsPagedViewTranslationScreengridY":F
    if-eqz p4, :cond_5

    move/from16 v0, v16

    neg-float v0, v0

    move/from16 v17, v0

    .line 489
    .local v17, "appsPagedViewTranslationY":F
    :goto_2
    if-eqz p4, :cond_6

    const/4 v7, 0x0

    .line 490
    .local v7, "searchBarAlphaValue":F
    :goto_3
    if-eqz p4, :cond_7

    const/high16 v9, 0x3f800000    # 1.0f

    .line 491
    .local v9, "screengridAlphaValue":F
    :goto_4
    invoke-virtual {v12}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCurrentPage()I

    move-result v18

    .line 492
    .local v18, "currentPage":I
    invoke-virtual {v12}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getPageCount()I

    move-result v20

    .line 493
    .local v20, "pageCount":I
    if-nez v20, :cond_8

    const/4 v14, 0x0

    .line 495
    .local v14, "appsPagedViewOffsetX":I
    :goto_5
    const v4, 0x7f0900a4

    .line 496
    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v22

    .line 497
    .local v22, "pageIndicatorMarginBottomScreenGrid":I
    if-eqz p4, :cond_a

    move/from16 v0, v22

    neg-int v4, v0

    int-to-float v0, v4

    move/from16 v23, v0

    .line 500
    .local v23, "pageIndicatorTranslationY":F
    :goto_6
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->cancelStateAnimation()V

    .line 502
    if-eqz v14, :cond_0

    .line 503
    move/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getScrollForPage(I)I

    move-result v4

    add-int/2addr v4, v14

    const/4 v5, 0x0

    invoke-virtual {v12, v4, v5}, Lcom/android/launcher3/allapps/view/AppsPagedView;->scrollTo(II)V

    .line 505
    :cond_0
    if-eqz p1, :cond_c

    .line 506
    invoke-static {}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    .line 508
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v0, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 509
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v0, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 510
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v0, v10, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 512
    new-instance v13, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;

    invoke-direct {v13, v12}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;-><init>(Landroid/view/View;)V

    .line 515
    .local v13, "appsPagedViewAnimator":Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;
    invoke-virtual {v13, v15}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->scaleX(F)Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;

    .line 516
    invoke-virtual {v13, v15}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->scaleY(F)Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;

    .line 517
    move/from16 v0, v17

    invoke-virtual {v13, v0}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->translationY(F)Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;

    .line 519
    move/from16 v0, v19

    int-to-long v4, v0

    invoke-virtual {v13, v4, v5}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->setDuration(J)Landroid/animation/Animator;

    .line 520
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v4, v13}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 522
    if-eqz v21, :cond_1

    .line 523
    new-instance v4, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;

    move-object/from16 v0, v21

    invoke-direct {v4, v0}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;-><init>(Landroid/view/View;)V

    .line 524
    move/from16 v0, v23

    invoke-virtual {v4, v0}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->translationY(F)Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;

    move-result-object v24

    .line 525
    .local v24, "pageIndicatorY":Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;
    move/from16 v0, v19

    int-to-long v4, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v5}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->setDuration(J)Landroid/animation/Animator;

    .line 526
    new-instance v4, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 527
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 529
    .end local v24    # "pageIndicatorY":Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;
    :cond_1
    new-instance v4, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;

    invoke-direct {v4, v6}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;-><init>(Landroid/view/View;)V

    .line 530
    invoke-virtual {v4, v7}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->alpha(F)Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;

    move-result-object v27

    .line 531
    .local v27, "searchBarAlpha":Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;
    new-instance v4, Lcom/android/launcher3/allapps/AlphaUpdateListener;

    invoke-direct {v4, v6, v11}, Lcom/android/launcher3/allapps/AlphaUpdateListener;-><init>(Landroid/view/View;Z)V

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 534
    new-instance v4, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;

    invoke-direct {v4, v8}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;-><init>(Landroid/view/View;)V

    .line 535
    invoke-virtual {v4, v9}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->alpha(F)Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;

    move-result-object v26

    .line 536
    .local v26, "screengridPanelAlpha":Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;
    new-instance v4, Lcom/android/launcher3/allapps/AlphaUpdateListener;

    invoke-direct {v4, v8, v11}, Lcom/android/launcher3/allapps/AlphaUpdateListener;-><init>(Landroid/view/View;Z)V

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 539
    new-instance v4, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;

    invoke-direct {v4, v10}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;-><init>(Landroid/view/View;)V

    .line 541
    invoke-virtual {v4, v9}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->alpha(F)Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;

    move-result-object v28

    .line 542
    .local v28, "topContainerAlpha":Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;
    new-instance v4, Lcom/android/launcher3/allapps/AlphaUpdateListener;

    invoke-direct {v4, v10, v11}, Lcom/android/launcher3/allapps/AlphaUpdateListener;-><init>(Landroid/view/View;Z)V

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 545
    if-eqz p4, :cond_b

    .line 546
    new-instance v4, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v5, 0x40000000    # 2.0f

    invoke-direct {v4, v5}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 547
    const/4 v4, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 548
    const/4 v4, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 556
    :goto_7
    move/from16 v0, v19

    int-to-long v4, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v4, v5}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->setDuration(J)Landroid/animation/Animator;

    .line 557
    move/from16 v0, v19

    int-to-long v4, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v5}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->setDuration(J)Landroid/animation/Animator;

    .line 558
    move/from16 v0, v19

    int-to-long v4, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v5}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->setDuration(J)Landroid/animation/Animator;

    .line 560
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 561
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 562
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 563
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    move-object/from16 v29, v0

    new-instance v4, Lcom/android/launcher3/allapps/AppsTransitionAnimation$5;

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v10}, Lcom/android/launcher3/allapps/AppsTransitionAnimation$5;-><init>(Lcom/android/launcher3/allapps/AppsTransitionAnimation;Landroid/view/View;FLcom/android/launcher3/allapps/AppsScreenGridPanel;FLandroid/view/View;)V

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 595
    .end local v13    # "appsPagedViewAnimator":Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;
    .end local v26    # "screengridPanelAlpha":Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;
    .end local v27    # "searchBarAlpha":Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;
    .end local v28    # "topContainerAlpha":Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;
    :cond_2
    :goto_8
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p4

    move/from16 v3, v19

    invoke-direct {v0, v12, v1, v2, v3}, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->changeScreenGridBackground(Lcom/android/launcher3/allapps/view/AppsPagedView;ZZI)V

    .line 597
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    return-object v4

    .line 478
    .end local v6    # "searchBarContainerView":Landroid/view/View;
    .end local v7    # "searchBarAlphaValue":F
    .end local v8    # "appsScreengridPanel":Lcom/android/launcher3/allapps/AppsScreenGridPanel;
    .end local v9    # "screengridAlphaValue":F
    .end local v10    # "appsScreenGridTopContainer":Landroid/view/View;
    .end local v14    # "appsPagedViewOffsetX":I
    .end local v15    # "appsPagedViewShrinkFactor":F
    .end local v16    # "appsPagedViewTranslationScreengridY":F
    .end local v17    # "appsPagedViewTranslationY":F
    .end local v18    # "currentPage":I
    .end local v19    # "duration":I
    .end local v20    # "pageCount":I
    .end local v21    # "pageIndicator":Lcom/android/launcher3/common/view/PageIndicator;
    .end local v22    # "pageIndicatorMarginBottomScreenGrid":I
    .end local v23    # "pageIndicatorTranslationY":F
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/controller/AppsController;->getAppsSearchBarView()Lcom/android/launcher3/allapps/view/AppsSearchBar;

    move-result-object v6

    .restart local v6    # "searchBarContainerView":Landroid/view/View;
    goto/16 :goto_0

    .line 485
    .restart local v8    # "appsScreengridPanel":Lcom/android/launcher3/allapps/AppsScreenGridPanel;
    .restart local v10    # "appsScreenGridTopContainer":Landroid/view/View;
    .restart local v19    # "duration":I
    .restart local v21    # "pageIndicator":Lcom/android/launcher3/common/view/PageIndicator;
    :cond_4
    const/high16 v15, 0x3f800000    # 1.0f

    goto/16 :goto_1

    .line 488
    .restart local v15    # "appsPagedViewShrinkFactor":F
    .restart local v16    # "appsPagedViewTranslationScreengridY":F
    :cond_5
    const/16 v17, 0x0

    goto/16 :goto_2

    .line 489
    .restart local v17    # "appsPagedViewTranslationY":F
    :cond_6
    const/high16 v7, 0x3f800000    # 1.0f

    goto/16 :goto_3

    .line 490
    .restart local v7    # "searchBarAlphaValue":F
    :cond_7
    const/4 v9, 0x0

    goto/16 :goto_4

    .line 493
    .restart local v9    # "screengridAlphaValue":F
    .restart local v18    # "currentPage":I
    .restart local v20    # "pageCount":I
    :cond_8
    move/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getLayoutTransitionOffsetForPage(I)I

    move-result v4

    mul-int/lit8 v5, v4, 0x2

    sget-boolean v4, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v4, :cond_9

    sub-int v4, v20, v18

    :goto_9
    mul-int v14, v5, v4

    goto/16 :goto_5

    :cond_9
    move/from16 v4, v18

    goto :goto_9

    .line 497
    .restart local v14    # "appsPagedViewOffsetX":I
    .restart local v22    # "pageIndicatorMarginBottomScreenGrid":I
    :cond_a
    const/16 v23, 0x0

    goto/16 :goto_6

    .line 551
    .restart local v13    # "appsPagedViewAnimator":Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;
    .restart local v23    # "pageIndicatorTranslationY":F
    .restart local v26    # "screengridPanelAlpha":Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;
    .restart local v27    # "searchBarAlpha":Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;
    .restart local v28    # "topContainerAlpha":Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;
    :cond_b
    const/4 v4, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 552
    new-instance v4, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v5, 0x40000000    # 2.0f

    invoke-direct {v4, v5}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 553
    new-instance v4, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v5, 0x40000000    # 2.0f

    invoke-direct {v4, v5}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto/16 :goto_7

    .line 578
    .end local v13    # "appsPagedViewAnimator":Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;
    .end local v26    # "screengridPanelAlpha":Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;
    .end local v27    # "searchBarAlpha":Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;
    .end local v28    # "topContainerAlpha":Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;
    :cond_c
    invoke-virtual {v6, v7}, Landroid/view/View;->setAlpha(F)V

    .line 579
    invoke-static {v6, v11}, Lcom/android/launcher3/allapps/AlphaUpdateListener;->updateVisibility(Landroid/view/View;Z)V

    .line 580
    invoke-virtual {v8, v9}, Lcom/android/launcher3/allapps/AppsScreenGridPanel;->setAlpha(F)V

    .line 581
    invoke-static {v8, v11}, Lcom/android/launcher3/allapps/AlphaUpdateListener;->updateVisibility(Landroid/view/View;Z)V

    .line 582
    invoke-virtual {v10, v9}, Landroid/view/View;->setAlpha(F)V

    .line 583
    invoke-static {v10, v11}, Lcom/android/launcher3/allapps/AlphaUpdateListener;->updateVisibility(Landroid/view/View;Z)V

    .line 586
    move/from16 v0, v17

    invoke-virtual {v12, v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->setTranslationY(F)V

    .line 587
    invoke-virtual {v12, v15}, Lcom/android/launcher3/allapps/view/AppsPagedView;->setScaleX(F)V

    .line 588
    invoke-virtual {v12, v15}, Lcom/android/launcher3/allapps/view/AppsPagedView;->setScaleY(F)V

    .line 590
    if-eqz v21, :cond_2

    .line 591
    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/view/PageIndicator;->setTranslationY(F)V

    goto/16 :goto_8
.end method

.method public getSearchAnimation(ZLjava/util/HashMap;Z)Landroid/animation/AnimatorSet;
    .locals 2
    .param p1, "animated"    # Z
    .param p3, "enter"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;Z)",
            "Landroid/animation/AnimatorSet;"
        }
    .end annotation

    .prologue
    .line 730
    .local p2, "layerViews":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/view/View;Ljava/lang/Integer;>;"
    invoke-direct {p0}, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->cancelStateAnimation()V

    .line 731
    if-eqz p1, :cond_0

    .line 741
    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    return-object v0

    .line 735
    :cond_0
    if-eqz p3, :cond_1

    .line 736
    iget-object v0, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/controller/AppsController;->setPagedViewVisibility(Z)Z

    goto :goto_0

    .line 738
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/controller/AppsController;->setPagedViewVisibility(Z)Z

    goto :goto_0
.end method

.method public getSelectAnimation(ZLjava/util/HashMap;Z)Landroid/animation/AnimatorSet;
    .locals 17
    .param p1, "animated"    # Z
    .param p3, "enter"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;Z)",
            "Landroid/animation/AnimatorSet;"
        }
    .end annotation

    .prologue
    .line 800
    .local p2, "layerViews":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/view/View;Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v14}, Lcom/android/launcher3/Launcher;->getMultiSelectManager()Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->getMultiSelectPanel()Lcom/android/launcher3/common/multiselect/MultiSelectPanel;

    move-result-object v5

    .line 801
    .local v5, "multiSelectPanel":Lcom/android/launcher3/common/multiselect/MultiSelectPanel;
    if-eqz p3, :cond_0

    const/4 v14, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->getStateAnimationDuration(I)I

    move-result v4

    .line 802
    .local v4, "duration":I
    :goto_0
    if-eqz p3, :cond_1

    move v13, v4

    .line 803
    .local v13, "startDelay":I
    :goto_1
    if-eqz p3, :cond_2

    const/4 v11, 0x0

    .line 804
    .local v11, "searchBarAlphaValue":F
    :goto_2
    if-eqz p3, :cond_3

    const/high16 v6, 0x3f800000    # 1.0f

    .line 805
    .local v6, "panelAlpha":F
    :goto_3
    if-eqz p3, :cond_4

    const/high16 v7, 0x3f800000    # 1.0f

    .line 806
    .local v7, "panelScale":F
    :goto_4
    sget-object v14, Lcom/android/launcher3/util/Talk;->INSTANCE:Lcom/android/launcher3/util/Talk;

    invoke-virtual {v14}, Lcom/android/launcher3/util/Talk;->isAccessibilityEnabled()Z

    move-result v2

    .line 807
    .local v2, "accessibilityEnabled":Z
    const/4 v12, 0x0

    .line 808
    .local v12, "searchBarContainerView":Landroid/view/View;
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportAppsSearch()Z

    move-result v14

    if-eqz v14, :cond_5

    .line 809
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v14}, Lcom/android/launcher3/allapps/controller/AppsController;->getAppsSearchView()Lcom/android/launcher3/allapps/view/AppsSearchContainerView;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->getSearchBarContainerView()Landroid/view/View;

    move-result-object v12

    .line 814
    :goto_5
    const/4 v14, 0x2

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v14, v1}, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->changeCellLayoutBackground(IZ)V

    .line 815
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->cancelStateAnimation()V

    .line 816
    if-eqz p1, :cond_6

    .line 817
    invoke-static {}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    .line 818
    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 819
    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 821
    new-instance v14, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;

    invoke-direct {v14, v12}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;-><init>(Landroid/view/View;)V

    .line 822
    invoke-virtual {v14, v11}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->alpha(F)Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;

    move-result-object v10

    .line 823
    .local v10, "searchBarAlpha":Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;
    new-instance v14, Lcom/android/launcher3/allapps/AlphaUpdateListener;

    invoke-direct {v14, v12, v2}, Lcom/android/launcher3/allapps/AlphaUpdateListener;-><init>(Landroid/view/View;Z)V

    invoke-virtual {v10, v14}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 824
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mSineInOut70:Landroid/view/animation/Interpolator;

    invoke-virtual {v10, v14}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 825
    int-to-long v14, v4

    invoke-virtual {v10, v14, v15}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->setDuration(J)Landroid/animation/Animator;

    .line 827
    sget-object v14, Landroid/view/View;->ALPHA:Landroid/util/Property;

    .line 828
    invoke-virtual {v14}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    new-array v15, v15, [F

    const/16 v16, 0x0

    aput v6, v15, v16

    .line 827
    invoke-static {v5, v14, v15}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 829
    .local v3, "alphaAnim":Landroid/animation/Animator;
    int-to-long v14, v4

    invoke-virtual {v3, v14, v15}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 830
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mSineInOut33:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v14}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 831
    int-to-long v14, v13

    invoke-virtual {v3, v14, v15}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 833
    sget-object v14, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    .line 834
    invoke-virtual {v14}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    new-array v15, v15, [F

    const/16 v16, 0x0

    aput v7, v15, v16

    .line 833
    invoke-static {v5, v14, v15}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    .line 835
    .local v8, "scaleXAnim":Landroid/animation/Animator;
    int-to-long v14, v4

    invoke-virtual {v8, v14, v15}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 836
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mSineInOut80:Landroid/view/animation/Interpolator;

    invoke-virtual {v8, v14}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 837
    int-to-long v14, v13

    invoke-virtual {v8, v14, v15}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 839
    sget-object v14, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    .line 840
    invoke-virtual {v14}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    new-array v15, v15, [F

    const/16 v16, 0x0

    aput v7, v15, v16

    .line 839
    invoke-static {v5, v14, v15}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    .line 841
    .local v9, "scaleYAnim":Landroid/animation/Animator;
    int-to-long v14, v4

    invoke-virtual {v9, v14, v15}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 842
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mSineInOut80:Landroid/view/animation/Interpolator;

    invoke-virtual {v9, v14}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 843
    int-to-long v14, v13

    invoke-virtual {v9, v14, v15}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 845
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    const/4 v15, 0x4

    new-array v15, v15, [Landroid/animation/Animator;

    const/16 v16, 0x0

    aput-object v10, v15, v16

    const/16 v16, 0x1

    aput-object v3, v15, v16

    const/16 v16, 0x2

    aput-object v8, v15, v16

    const/16 v16, 0x3

    aput-object v9, v15, v16

    invoke-virtual {v14, v15}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 846
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    new-instance v15, Lcom/android/launcher3/allapps/AppsTransitionAnimation$10;

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v15, v0, v1, v5}, Lcom/android/launcher3/allapps/AppsTransitionAnimation$10;-><init>(Lcom/android/launcher3/allapps/AppsTransitionAnimation;ZLcom/android/launcher3/common/multiselect/MultiSelectPanel;)V

    invoke-virtual {v14, v15}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 874
    .end local v3    # "alphaAnim":Landroid/animation/Animator;
    .end local v8    # "scaleXAnim":Landroid/animation/Animator;
    .end local v9    # "scaleYAnim":Landroid/animation/Animator;
    .end local v10    # "searchBarAlpha":Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;
    :goto_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    return-object v14

    .line 801
    .end local v2    # "accessibilityEnabled":Z
    .end local v4    # "duration":I
    .end local v6    # "panelAlpha":F
    .end local v7    # "panelScale":F
    .end local v11    # "searchBarAlphaValue":F
    .end local v12    # "searchBarContainerView":Landroid/view/View;
    .end local v13    # "startDelay":I
    :cond_0
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 802
    .restart local v4    # "duration":I
    :cond_1
    const/4 v13, 0x0

    goto/16 :goto_1

    .line 803
    .restart local v13    # "startDelay":I
    :cond_2
    const/high16 v11, 0x3f800000    # 1.0f

    goto/16 :goto_2

    .line 804
    .restart local v11    # "searchBarAlphaValue":F
    :cond_3
    const/4 v6, 0x0

    goto/16 :goto_3

    .line 805
    .restart local v6    # "panelAlpha":F
    :cond_4
    const v7, 0x3f733333    # 0.95f

    goto/16 :goto_4

    .line 811
    .restart local v2    # "accessibilityEnabled":Z
    .restart local v7    # "panelScale":F
    .restart local v12    # "searchBarContainerView":Landroid/view/View;
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v14}, Lcom/android/launcher3/allapps/controller/AppsController;->getAppsSearchBarView()Lcom/android/launcher3/allapps/view/AppsSearchBar;

    move-result-object v12

    goto/16 :goto_5

    .line 866
    :cond_6
    invoke-virtual {v12, v11}, Landroid/view/View;->setAlpha(F)V

    .line 867
    if-nez p3, :cond_7

    const/4 v14, 0x0

    :goto_7
    invoke-virtual {v12, v14}, Landroid/view/View;->setVisibility(I)V

    .line 868
    invoke-virtual {v5, v7}, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->setScaleX(F)V

    .line 869
    invoke-virtual {v5, v7}, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->setScaleY(F)V

    .line 870
    invoke-virtual {v5, v6}, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->setAlpha(F)V

    .line 871
    if-eqz p3, :cond_8

    const/4 v14, 0x0

    :goto_8
    invoke-virtual {v5, v14}, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->setVisibility(I)V

    goto :goto_6

    .line 867
    :cond_7
    const/16 v14, 0x8

    goto :goto_7

    .line 871
    :cond_8
    const/16 v14, 0x8

    goto :goto_8
.end method

.method public getTidyUpAnimation(ZLjava/util/HashMap;ZLcom/android/launcher3/common/stage/StageEntry;)Landroid/animation/AnimatorSet;
    .locals 10
    .param p1, "animated"    # Z
    .param p3, "enter"    # Z
    .param p4, "data"    # Lcom/android/launcher3/common/stage/StageEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;Z",
            "Lcom/android/launcher3/common/stage/StageEntry;",
            ")",
            "Landroid/animation/AnimatorSet;"
        }
    .end annotation

    .prologue
    .local p2, "layerViews":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/view/View;Ljava/lang/Integer;>;"
    const/16 v5, 0x8

    const/4 v7, 0x4

    .line 602
    invoke-direct {p0, v7}, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->getStateAnimationDuration(I)I

    move-result v0

    .line 603
    .local v0, "duration":I
    if-eqz p3, :cond_1

    const/4 v2, 0x0

    .line 606
    .local v2, "searchBarAlphaValue":F
    :goto_0
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportAppsSearch()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 607
    iget-object v6, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v6}, Lcom/android/launcher3/allapps/controller/AppsController;->getAppsSearchView()Lcom/android/launcher3/allapps/view/AppsSearchContainerView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->getSearchBarContainerView()Landroid/view/View;

    move-result-object v3

    .line 612
    .local v3, "searchBarContainerView":Landroid/view/View;
    :goto_1
    iget-object v6, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v6}, Lcom/android/launcher3/allapps/controller/AppsController;->getTidyUpContainerView()Landroid/view/View;

    move-result-object v4

    .line 614
    .local v4, "tidyUpContainerView":Landroid/view/View;
    invoke-direct {p0, v7, p3}, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->changeCellLayoutBackground(IZ)V

    .line 616
    invoke-direct {p0}, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->cancelStateAnimation()V

    .line 618
    if-eqz p1, :cond_3

    .line 619
    invoke-static {}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v6

    iput-object v6, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    .line 621
    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 623
    new-instance v1, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;

    invoke-direct {v1, v3}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;-><init>(Landroid/view/View;)V

    .line 624
    .local v1, "searchBarAlpha":Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;
    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->alpha(F)Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;

    move-result-object v6

    int-to-long v8, v0

    invoke-virtual {v6, v8, v9}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->setDuration(J)Landroid/animation/Animator;

    .line 625
    new-instance v6, Lcom/android/launcher3/allapps/AppsTransitionAnimation$6;

    invoke-direct {v6, p0, p3, v4}, Lcom/android/launcher3/allapps/AppsTransitionAnimation$6;-><init>(Lcom/android/launcher3/allapps/AppsTransitionAnimation;ZLandroid/view/View;)V

    invoke-virtual {v1, v6}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 638
    invoke-direct {p0, p2, v0, p4}, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->getViewInOutAnimator(Ljava/util/HashMap;ILcom/android/launcher3/common/stage/StageEntry;)V

    .line 639
    if-nez p3, :cond_0

    .line 640
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 643
    :cond_0
    iget-object v5, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v5, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 644
    iget-object v5, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    new-instance v6, Lcom/android/launcher3/allapps/AppsTransitionAnimation$7;

    invoke-direct {v6, p0, v3, v2}, Lcom/android/launcher3/allapps/AppsTransitionAnimation$7;-><init>(Lcom/android/launcher3/allapps/AppsTransitionAnimation;Landroid/view/View;F)V

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 661
    .end local v1    # "searchBarAlpha":Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;
    :goto_2
    iget-object v5, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    return-object v5

    .line 603
    .end local v2    # "searchBarAlphaValue":F
    .end local v3    # "searchBarContainerView":Landroid/view/View;
    .end local v4    # "tidyUpContainerView":Landroid/view/View;
    :cond_1
    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_0

    .line 609
    .restart local v2    # "searchBarAlphaValue":F
    :cond_2
    iget-object v6, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v6}, Lcom/android/launcher3/allapps/controller/AppsController;->getAppsSearchBarView()Lcom/android/launcher3/allapps/view/AppsSearchBar;

    move-result-object v3

    .restart local v3    # "searchBarContainerView":Landroid/view/View;
    goto :goto_1

    .line 657
    .restart local v4    # "tidyUpContainerView":Landroid/view/View;
    :cond_3
    invoke-virtual {v3, v2}, Landroid/view/View;->setAlpha(F)V

    .line 658
    if-eqz p3, :cond_4

    const/4 v5, 0x0

    :cond_4
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 659
    iget-object v5, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v5, p4}, Lcom/android/launcher3/allapps/controller/AppsController;->repositionBy(Lcom/android/launcher3/common/stage/StageEntry;)V

    goto :goto_2
.end method
