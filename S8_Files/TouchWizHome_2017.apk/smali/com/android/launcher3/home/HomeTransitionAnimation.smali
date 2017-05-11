.class Lcom/android/launcher3/home/HomeTransitionAnimation;
.super Ljava/lang/Object;
.source "HomeTransitionAnimation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/home/HomeTransitionAnimation$ScrollInterpolator;
    }
.end annotation


# instance fields
.field private mDragDrakenAlpha:F

.field private mFolderBgGrowFactor:F

.field private mHomeController:Lcom/android/launcher3/home/HomeController;

.field private mHomeRootView:Landroid/view/View;

.field private mIsRunningOverviewAnimation:Z

.field private mIsRunningSwipeAnimation:Z

.field private mLauncher:Lcom/android/launcher3/Launcher;

.field private mOverviewDrakenAlpha:F

.field private mOverviewShrinkFactor:F

.field private mScreenGridShrinkFactor:F

.field private final mSineInOut33:Landroid/view/animation/Interpolator;

.field private final mSineInOut70:Landroid/view/animation/Interpolator;

.field private final mSineInOut80:Landroid/view/animation/Interpolator;

.field private mStageAnimator:Landroid/animation/AnimatorSet;

.field private mStateAnimator:Landroid/animation/AnimatorSet;

.field private final mSwipeInterpolator:Landroid/view/animation/Interpolator;

.field private mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;


# direct methods
.method constructor <init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/home/HomeController;Lcom/android/launcher3/common/tray/TrayManager;)V
    .locals 4
    .param p1, "launcher"    # Lcom/android/launcher3/Launcher;
    .param p2, "homeController"    # Lcom/android/launcher3/home/HomeController;
    .param p3, "trayManager"    # Lcom/android/launcher3/common/tray/TrayManager;

    .prologue
    const/4 v3, 0x1

    const/high16 v2, 0x42c80000    # 100.0f

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    const/16 v1, 0x22

    invoke-static {v1}, Lcom/android/launcher3/util/ViInterpolator;->getInterploator(I)Landroid/view/animation/PathInterpolator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mSineInOut80:Landroid/view/animation/Interpolator;

    .line 123
    const/16 v1, 0x21

    invoke-static {v1}, Lcom/android/launcher3/util/ViInterpolator;->getInterploator(I)Landroid/view/animation/PathInterpolator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mSineInOut70:Landroid/view/animation/Interpolator;

    .line 124
    const/16 v1, 0x1e

    invoke-static {v1}, Lcom/android/launcher3/util/ViInterpolator;->getInterploator(I)Landroid/view/animation/PathInterpolator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mSineInOut33:Landroid/view/animation/Interpolator;

    .line 125
    new-instance v1, Lcom/android/launcher3/home/HomeTransitionAnimation$ScrollInterpolator;

    invoke-direct {v1}, Lcom/android/launcher3/home/HomeTransitionAnimation$ScrollInterpolator;-><init>()V

    iput-object v1, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mSwipeInterpolator:Landroid/view/animation/Interpolator;

    .line 149
    iput-object p1, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 150
    iput-object p2, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeController:Lcom/android/launcher3/home/HomeController;

    .line 151
    iput-object p3, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    .line 153
    iget-object v1, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 154
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f0b002b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    iput v1, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mDragDrakenAlpha:F

    .line 155
    const v1, 0x7f0b002d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    iput v1, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mOverviewDrakenAlpha:F

    .line 157
    const v1, 0x7f0e0004

    invoke-virtual {v0, v1, v3, v3}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v1

    iput v1, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mFolderBgGrowFactor:F

    .line 159
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeTransitionAnimation;->setupShrinkFactor()V

    .line 160
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/home/HomeTransitionAnimation;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeTransitionAnimation;

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/launcher3/home/HomeTransitionAnimation;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeTransitionAnimation;
    .param p1, "x1"    # Landroid/animation/AnimatorSet;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$202(Lcom/android/launcher3/home/HomeTransitionAnimation;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeTransitionAnimation;
    .param p1, "x1"    # Z

    .prologue
    .line 112
    iput-boolean p1, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mIsRunningOverviewAnimation:Z

    return p1
.end method

.method static synthetic access$302(Lcom/android/launcher3/home/HomeTransitionAnimation;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeTransitionAnimation;
    .param p1, "x1"    # Landroid/animation/AnimatorSet;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$402(Lcom/android/launcher3/home/HomeTransitionAnimation;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeTransitionAnimation;
    .param p1, "x1"    # Z

    .prologue
    .line 112
    iput-boolean p1, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mIsRunningSwipeAnimation:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/launcher3/home/HomeTransitionAnimation;)Lcom/android/launcher3/common/tray/TrayManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeTransitionAnimation;

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    return-object v0
.end method

.method private animateBackgroundDarken(Landroid/animation/AnimatorSet;ZII)V
    .locals 7
    .param p1, "animatorSet"    # Landroid/animation/AnimatorSet;
    .param p2, "animated"    # Z
    .param p3, "state"    # I
    .param p4, "duration"    # I

    .prologue
    const/4 v5, 0x2

    .line 1048
    iget-object v4, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/common/view/DragLayer;

    move-result-object v1

    .line 1049
    .local v1, "dragLayer":Lcom/android/launcher3/common/view/DragLayer;
    invoke-virtual {v1}, Lcom/android/launcher3/common/view/DragLayer;->getBackgroundAlpha()F

    move-result v3

    .line 1050
    .local v3, "startAlpha":F
    const/4 v2, 0x0

    .line 1052
    .local v2, "finalAlpha":F
    const/4 v4, 0x4

    if-ne p3, v4, :cond_2

    .line 1053
    iget v2, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mOverviewDrakenAlpha:F

    .line 1058
    :cond_0
    :goto_0
    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v4

    if-eqz v4, :cond_1

    .line 1059
    if-eqz p2, :cond_3

    if-eqz p1, :cond_3

    .line 1060
    const-string v4, "backgroundAlpha"

    new-array v5, v5, [F

    const/4 v6, 0x0

    aput v3, v5, v6

    const/4 v6, 0x1

    aput v2, v5, v6

    invoke-static {v1, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1062
    .local v0, "bgAnim":Landroid/animation/ValueAnimator;
    int-to-long v4, p4

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1063
    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1068
    .end local v0    # "bgAnim":Landroid/animation/ValueAnimator;
    :cond_1
    :goto_1
    return-void

    .line 1054
    :cond_2
    if-ne p3, v5, :cond_0

    .line 1055
    iget v2, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mDragDrakenAlpha:F

    goto :goto_0

    .line 1065
    :cond_3
    invoke-virtual {v1, v2}, Lcom/android/launcher3/common/view/DragLayer;->setBackgroundAlpha(F)V

    goto :goto_1
.end method

.method private animateExitAppsOrWidget(Landroid/animation/AnimatorSet;ZZ)V
    .locals 7
    .param p1, "animatorSet"    # Landroid/animation/AnimatorSet;
    .param p2, "animated"    # Z
    .param p3, "accessibilityEnabled"    # Z

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    .line 1071
    iget-object v3, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v3}, Lcom/android/launcher3/home/HomeController;->getOverviewPanel()Lcom/android/launcher3/home/OverviewPanel;

    move-result-object v2

    .line 1072
    .local v2, "overviewPanel":Lcom/android/launcher3/home/OverviewPanel;
    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/android/launcher3/home/OverviewPanel;->setVisibility(I)V

    .line 1074
    iget-object v3, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v3}, Lcom/android/launcher3/home/HomeController;->getHotseat()Lcom/android/launcher3/home/Hotseat;

    move-result-object v1

    .line 1075
    .local v1, "hotseat":Lcom/android/launcher3/home/Hotseat;
    invoke-virtual {v1, v6}, Lcom/android/launcher3/home/Hotseat;->setAlpha(F)V

    .line 1076
    invoke-static {v1, p3}, Lcom/android/launcher3/home/AlphaUpdateListener;->updateVisibility(Landroid/view/View;Z)V

    .line 1078
    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 1079
    new-instance v3, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;

    iget-object v4, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    invoke-direct {v3, v4}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;-><init>(Landroid/view/View;)V

    .line 1080
    invoke-virtual {v3, v6}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->alpha(F)Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;

    move-result-object v0

    .line 1081
    .local v0, "exitAnimator":Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;
    const/4 v3, 0x1

    const/4 v4, 0x2

    invoke-direct {p0, v3, v4}, Lcom/android/launcher3/home/HomeTransitionAnimation;->getStageAnimationDuration(II)I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v0, v4, v5}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->setDuration(J)Landroid/animation/Animator;

    .line 1082
    new-instance v3, Lcom/android/launcher3/home/AlphaUpdateListener;

    iget-object v4, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    invoke-direct {v3, v4, p3}, Lcom/android/launcher3/home/AlphaUpdateListener;-><init>(Landroid/view/View;Z)V

    invoke-virtual {v0, v3}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1084
    iget-object v3, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setScaleX(F)V

    .line 1085
    iget-object v3, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setScaleY(F)V

    .line 1086
    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1093
    .end local v0    # "exitAnimator":Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;
    :goto_0
    return-void

    .line 1088
    :cond_0
    iget-object v3, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setScaleX(F)V

    .line 1089
    iget-object v3, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setScaleY(F)V

    .line 1090
    iget-object v3, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setAlpha(F)V

    .line 1091
    iget-object v3, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    invoke-static {v3, p3}, Lcom/android/launcher3/home/AlphaUpdateListener;->updateVisibility(Landroid/view/View;Z)V

    goto :goto_0
.end method

.method private animateSwipeHometray(Landroid/animation/AnimatorSet;ZJZ)V
    .locals 11
    .param p1, "animatorSet"    # Landroid/animation/AnimatorSet;
    .param p2, "enter"    # Z
    .param p3, "duration"    # J
    .param p5, "fromWidget"    # Z

    .prologue
    .line 906
    if-eqz p2, :cond_0

    .line 907
    const/4 v3, 0x0

    .line 928
    .local v3, "toTranslationY":F
    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-gez v0, :cond_3

    .line 929
    invoke-direct {p0, p2}, Lcom/android/launcher3/home/HomeTransitionAnimation;->getSwipeAnimationDuration(Z)I

    move-result v0

    int-to-long v4, v0

    .line 934
    .local v4, "animDuration":J
    :goto_1
    iget-object v0, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    sget-object v1, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    invoke-virtual {v1}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v6, 0x0

    aput v3, v2, v6

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    .line 935
    .local v8, "homeTranslate":Landroid/animation/Animator;
    invoke-virtual {v8, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 936
    iget-object v0, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mSwipeInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v8, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 937
    new-instance v0, Lcom/android/launcher3/home/HomeTransitionAnimation$7;

    move-object v1, p0

    move/from16 v2, p5

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/home/HomeTransitionAnimation$7;-><init>(Lcom/android/launcher3/home/HomeTransitionAnimation;ZFJZ)V

    invoke-virtual {v8, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 967
    invoke-virtual {p1, v8}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 968
    return-void

    .line 910
    .end local v3    # "toTranslationY":F
    .end local v4    # "animDuration":J
    .end local v8    # "homeTranslate":Landroid/animation/Animator;
    :cond_0
    const/4 v7, 0x0

    .line 911
    .local v7, "appSearchOverlayHeight":I
    iget-object v0, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    if-eqz v0, :cond_1

    .line 912
    iget-object v0, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    invoke-virtual {v0}, Lcom/android/launcher3/common/tray/TrayManager;->getTrayMovingRange()I

    move-result v9

    .line 920
    .local v9, "range":I
    :goto_2
    iget-object v0, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 921
    sub-int v0, v9, v7

    int-to-float v3, v0

    .restart local v3    # "toTranslationY":F
    goto :goto_0

    .line 914
    .end local v3    # "toTranslationY":F
    .end local v9    # "range":I
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->getFullScreenHeight(Landroid/app/Activity;)I

    move-result v9

    .restart local v9    # "range":I
    goto :goto_2

    .line 923
    :cond_2
    neg-int v0, v9

    add-int/2addr v0, v7

    int-to-float v3, v0

    .restart local v3    # "toTranslationY":F
    goto :goto_0

    .line 931
    .end local v7    # "appSearchOverlayHeight":I
    .end local v9    # "range":I
    :cond_3
    move-wide v4, p3

    .restart local v4    # "animDuration":J
    goto :goto_1
.end method

.method private cancelStageAnimation()V
    .locals 4

    .prologue
    .line 1032
    iget-object v0, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 1033
    iget-object v0, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1034
    iget-object v0, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1036
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    .line 1037
    return-void
.end method

.method private cancelStateAnimation()V
    .locals 4

    .prologue
    .line 1040
    iget-object v0, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 1041
    iget-object v0, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1042
    iget-object v0, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1044
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    .line 1045
    return-void
.end method

.method private changeDragBackground(Lcom/android/launcher3/home/Workspace;Z)V
    .locals 11
    .param p1, "workspace"    # Lcom/android/launcher3/home/Workspace;
    .param p2, "enter"    # Z

    .prologue
    const/4 v10, 0x0

    const/4 v5, 0x0

    .line 1149
    if-eqz p2, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1150
    .local v0, "backgroundAlpha":F
    :goto_0
    invoke-virtual {p1}, Lcom/android/launcher3/home/Workspace;->getChildCount()I

    move-result v1

    .line 1151
    .local v1, "childCount":I
    invoke-virtual {p1}, Lcom/android/launcher3/home/Workspace;->getCurrentPage()I

    move-result v3

    .line 1153
    .local v3, "currentPage":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v1, :cond_4

    .line 1154
    invoke-virtual {p1, v4}, Lcom/android/launcher3/home/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/home/WorkspaceCellLayout;

    .line 1155
    .local v2, "cl":Lcom/android/launcher3/home/WorkspaceCellLayout;
    if-eqz p2, :cond_2

    .line 1156
    const/4 v6, 0x2

    invoke-virtual {v2, v6, v10}, Lcom/android/launcher3/home/WorkspaceCellLayout;->setBgImage(IZ)V

    .line 1161
    :goto_2
    if-eq v4, v3, :cond_0

    invoke-virtual {p1, v4}, Lcom/android/launcher3/home/Workspace;->getScreenIdForPageIndex(I)J

    move-result-wide v6

    const-wide/16 v8, -0xc9

    cmp-long v6, v6, v8

    if-nez v6, :cond_3

    .line 1162
    :cond_0
    invoke-virtual {v2, v5}, Lcom/android/launcher3/home/WorkspaceCellLayout;->setBackgroundAlpha(F)V

    .line 1153
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .end local v0    # "backgroundAlpha":F
    .end local v1    # "childCount":I
    .end local v2    # "cl":Lcom/android/launcher3/home/WorkspaceCellLayout;
    .end local v3    # "currentPage":I
    .end local v4    # "i":I
    :cond_1
    move v0, v5

    .line 1149
    goto :goto_0

    .line 1158
    .restart local v0    # "backgroundAlpha":F
    .restart local v1    # "childCount":I
    .restart local v2    # "cl":Lcom/android/launcher3/home/WorkspaceCellLayout;
    .restart local v3    # "currentPage":I
    .restart local v4    # "i":I
    :cond_2
    const/4 v6, 0x1

    invoke-virtual {v2, v6, v10}, Lcom/android/launcher3/home/WorkspaceCellLayout;->setBgImage(IZ)V

    goto :goto_2

    .line 1164
    :cond_3
    invoke-virtual {v2, v0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->setBackgroundAlpha(F)V

    goto :goto_3

    .line 1167
    .end local v2    # "cl":Lcom/android/launcher3/home/WorkspaceCellLayout;
    :cond_4
    return-void
.end method

.method private changeOverviewBackground(Landroid/animation/AnimatorSet;Lcom/android/launcher3/home/Workspace;ZZI)V
    .locals 15
    .param p1, "animatorSet"    # Landroid/animation/AnimatorSet;
    .param p2, "workspace"    # Lcom/android/launcher3/home/Workspace;
    .param p3, "animated"    # Z
    .param p4, "enter"    # Z
    .param p5, "duration"    # I

    .prologue
    .line 1097
    if-eqz p4, :cond_1

    const/high16 v2, 0x3f800000    # 1.0f

    .line 1098
    .local v2, "backgroundAlpha":F
    :goto_0
    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher3/home/Workspace;->getChildCount()I

    move-result v4

    .line 1099
    .local v4, "childCount":I
    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher3/home/Workspace;->getCurrentPage()I

    move-result v6

    .line 1100
    .local v6, "currentPage":I
    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher3/home/Workspace;->getDefaultPage()I

    move-result v7

    .line 1102
    .local v7, "defaultPage":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-ge v8, v4, :cond_a

    .line 1103
    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Lcom/android/launcher3/home/Workspace;->getScreenIdForPageIndex(I)J

    move-result-wide v10

    .line 1104
    .local v10, "screenId":J
    const-wide/16 v12, -0x191

    cmp-long v9, v10, v12

    if-eqz v9, :cond_0

    const-wide/16 v12, -0x12d

    cmp-long v9, v10, v12

    if-eqz v9, :cond_0

    const-wide/16 v12, -0x1f5

    cmp-long v9, v10, v12

    if-nez v9, :cond_2

    .line 1102
    :cond_0
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1097
    .end local v2    # "backgroundAlpha":F
    .end local v4    # "childCount":I
    .end local v6    # "currentPage":I
    .end local v7    # "defaultPage":I
    .end local v8    # "i":I
    .end local v10    # "screenId":J
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 1109
    .restart local v2    # "backgroundAlpha":F
    .restart local v4    # "childCount":I
    .restart local v6    # "currentPage":I
    .restart local v7    # "defaultPage":I
    .restart local v8    # "i":I
    .restart local v10    # "screenId":J
    :cond_2
    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Lcom/android/launcher3/home/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/home/WorkspaceCellLayout;

    .line 1110
    .local v5, "cl":Lcom/android/launcher3/home/WorkspaceCellLayout;
    if-eqz p3, :cond_7

    if-eqz p1, :cond_7

    .line 1111
    if-eqz p4, :cond_6

    .line 1112
    const/4 v12, 0x4

    if-ne v8, v7, :cond_5

    const/4 v9, 0x1

    :goto_3
    invoke-virtual {v5, v12, v9}, Lcom/android/launcher3/home/WorkspaceCellLayout;->setBgImage(IZ)V

    .line 1113
    if-eq v8, v6, :cond_3

    add-int/lit8 v9, v6, -0x1

    if-eq v8, v9, :cond_3

    add-int/lit8 v9, v6, 0x1

    if-eq v8, v9, :cond_3

    .line 1114
    invoke-virtual {v5, v2}, Lcom/android/launcher3/home/WorkspaceCellLayout;->setBackgroundAlpha(F)V

    .line 1123
    :cond_3
    :goto_4
    if-eq v8, v6, :cond_4

    add-int/lit8 v9, v6, -0x1

    if-eq v8, v9, :cond_4

    add-int/lit8 v9, v6, 0x1

    if-ne v8, v9, :cond_0

    .line 1124
    :cond_4
    const-string v9, "backgroundAlpha"

    const/4 v12, 0x2

    new-array v12, v12, [F

    const/4 v13, 0x0

    .line 1125
    invoke-virtual {v5}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getBackgroundAlpha()F

    move-result v14

    aput v14, v12, v13

    const/4 v13, 0x1

    aput v2, v12, v13

    .line 1124
    invoke-static {v5, v9, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 1126
    .local v3, "bgAnim":Landroid/animation/ValueAnimator;
    move/from16 v0, p5

    int-to-long v12, v0

    invoke-virtual {v3, v12, v13}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1127
    new-instance v9, Lcom/android/launcher3/home/HomeTransitionAnimation$8;

    move/from16 v0, p4

    invoke-direct {v9, p0, v0, v5}, Lcom/android/launcher3/home/HomeTransitionAnimation$8;-><init>(Lcom/android/launcher3/home/HomeTransitionAnimation;ZLcom/android/launcher3/home/WorkspaceCellLayout;)V

    invoke-virtual {v3, v9}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1135
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_2

    .line 1112
    .end local v3    # "bgAnim":Landroid/animation/ValueAnimator;
    :cond_5
    const/4 v9, 0x0

    goto :goto_3

    .line 1117
    :cond_6
    if-eq v8, v6, :cond_3

    add-int/lit8 v9, v6, -0x1

    if-eq v8, v9, :cond_3

    add-int/lit8 v9, v6, 0x1

    if-eq v8, v9, :cond_3

    .line 1118
    const/4 v9, 0x1

    const/4 v12, 0x0

    invoke-virtual {v5, v9, v12}, Lcom/android/launcher3/home/WorkspaceCellLayout;->setBgImage(IZ)V

    .line 1119
    invoke-virtual {v5, v2}, Lcom/android/launcher3/home/WorkspaceCellLayout;->setBackgroundAlpha(F)V

    goto :goto_4

    .line 1138
    :cond_7
    if-eqz p4, :cond_9

    .line 1139
    const/4 v12, 0x4

    if-ne v8, v7, :cond_8

    const/4 v9, 0x1

    :goto_5
    invoke-virtual {v5, v12, v9}, Lcom/android/launcher3/home/WorkspaceCellLayout;->setBgImage(IZ)V

    .line 1143
    :goto_6
    invoke-virtual {v5, v2}, Lcom/android/launcher3/home/WorkspaceCellLayout;->setBackgroundAlpha(F)V

    goto :goto_2

    .line 1139
    :cond_8
    const/4 v9, 0x0

    goto :goto_5

    .line 1141
    :cond_9
    const/4 v9, 0x1

    const/4 v12, 0x0

    invoke-virtual {v5, v9, v12}, Lcom/android/launcher3/home/WorkspaceCellLayout;->setBgImage(IZ)V

    goto :goto_6

    .line 1146
    .end local v5    # "cl":Lcom/android/launcher3/home/WorkspaceCellLayout;
    .end local v10    # "screenId":J
    :cond_a
    return-void
.end method

.method private changeScreenGridBackground(Lcom/android/launcher3/home/Workspace;ZZIZ)V
    .locals 15
    .param p1, "workspace"    # Lcom/android/launcher3/home/Workspace;
    .param p2, "animated"    # Z
    .param p3, "enter"    # Z
    .param p4, "duration"    # I
    .param p5, "toNormal"    # Z

    .prologue
    .line 1171
    if-eqz p3, :cond_1

    const/high16 v2, 0x3f800000    # 1.0f

    .line 1172
    .local v2, "backgroundAlpha":F
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/home/Workspace;->getChildCount()I

    move-result v4

    .line 1173
    .local v4, "childCount":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/home/Workspace;->getCurrentPage()I

    move-result v6

    .line 1174
    .local v6, "currentPage":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/home/Workspace;->getDefaultPage()I

    move-result v7

    .line 1176
    .local v7, "defaultPage":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-ge v8, v4, :cond_f

    .line 1177
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Lcom/android/launcher3/home/Workspace;->getScreenIdForPageIndex(I)J

    move-result-wide v10

    .line 1178
    .local v10, "screenId":J
    const-wide/16 v12, -0x191

    cmp-long v9, v10, v12

    if-eqz v9, :cond_0

    const-wide/16 v12, -0x12d

    cmp-long v9, v10, v12

    if-eqz v9, :cond_0

    const-wide/16 v12, -0x1f5

    cmp-long v9, v10, v12

    if-nez v9, :cond_3

    .line 1176
    :cond_0
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1171
    .end local v2    # "backgroundAlpha":F
    .end local v4    # "childCount":I
    .end local v6    # "currentPage":I
    .end local v7    # "defaultPage":I
    .end local v8    # "i":I
    .end local v10    # "screenId":J
    :cond_1
    if-eqz p5, :cond_2

    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_0

    .line 1183
    .restart local v2    # "backgroundAlpha":F
    .restart local v4    # "childCount":I
    .restart local v6    # "currentPage":I
    .restart local v7    # "defaultPage":I
    .restart local v8    # "i":I
    .restart local v10    # "screenId":J
    :cond_3
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Lcom/android/launcher3/home/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/home/WorkspaceCellLayout;

    .line 1184
    .local v5, "cl":Lcom/android/launcher3/home/WorkspaceCellLayout;
    if-eqz p2, :cond_a

    .line 1185
    if-eqz p3, :cond_7

    .line 1186
    const/4 v12, 0x5

    if-ne v8, v7, :cond_6

    const/4 v9, 0x1

    :goto_3
    invoke-virtual {v5, v12, v9}, Lcom/android/launcher3/home/WorkspaceCellLayout;->setBgImage(IZ)V

    .line 1187
    if-eq v8, v6, :cond_4

    add-int/lit8 v9, v6, -0x1

    if-eq v8, v9, :cond_4

    add-int/lit8 v9, v6, 0x1

    if-eq v8, v9, :cond_4

    .line 1188
    invoke-virtual {v5, v2}, Lcom/android/launcher3/home/WorkspaceCellLayout;->setBackgroundAlpha(F)V

    .line 1202
    :cond_4
    :goto_4
    if-eq v8, v6, :cond_5

    add-int/lit8 v9, v6, -0x1

    if-eq v8, v9, :cond_5

    add-int/lit8 v9, v6, 0x1

    if-ne v8, v9, :cond_0

    .line 1203
    :cond_5
    const-string v9, "backgroundAlpha"

    const/4 v12, 0x2

    new-array v12, v12, [F

    const/4 v13, 0x0

    .line 1204
    invoke-virtual {v5}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getBackgroundAlpha()F

    move-result v14

    aput v14, v12, v13

    const/4 v13, 0x1

    aput v2, v12, v13

    .line 1203
    invoke-static {v5, v9, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 1205
    .local v3, "bgAnim":Landroid/animation/ValueAnimator;
    move/from16 v0, p4

    int-to-long v12, v0

    invoke-virtual {v3, v12, v13}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1206
    new-instance v9, Lcom/android/launcher3/home/HomeTransitionAnimation$9;

    move/from16 v0, p3

    move/from16 v1, p5

    invoke-direct {v9, p0, v0, v1, v5}, Lcom/android/launcher3/home/HomeTransitionAnimation$9;-><init>(Lcom/android/launcher3/home/HomeTransitionAnimation;ZZLcom/android/launcher3/home/WorkspaceCellLayout;)V

    invoke-virtual {v3, v9}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1216
    iget-object v9, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v9, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_2

    .line 1186
    .end local v3    # "bgAnim":Landroid/animation/ValueAnimator;
    :cond_6
    const/4 v9, 0x0

    goto :goto_3

    .line 1191
    :cond_7
    if-eq v8, v6, :cond_4

    add-int/lit8 v9, v6, -0x1

    if-eq v8, v9, :cond_4

    add-int/lit8 v9, v6, 0x1

    if-eq v8, v9, :cond_4

    .line 1192
    if-eqz p5, :cond_8

    .line 1193
    const/4 v9, 0x1

    const/4 v12, 0x0

    invoke-virtual {v5, v9, v12}, Lcom/android/launcher3/home/WorkspaceCellLayout;->setBgImage(IZ)V

    .line 1198
    :goto_5
    invoke-virtual {v5, v2}, Lcom/android/launcher3/home/WorkspaceCellLayout;->setBackgroundAlpha(F)V

    goto :goto_4

    .line 1195
    :cond_8
    const/4 v12, 0x4

    if-ne v8, v7, :cond_9

    const/4 v9, 0x1

    :goto_6
    invoke-virtual {v5, v12, v9}, Lcom/android/launcher3/home/WorkspaceCellLayout;->setBgImage(IZ)V

    goto :goto_5

    :cond_9
    const/4 v9, 0x0

    goto :goto_6

    .line 1219
    :cond_a
    if-eqz p3, :cond_c

    .line 1220
    const/4 v12, 0x5

    if-ne v8, v7, :cond_b

    const/4 v9, 0x1

    :goto_7
    invoke-virtual {v5, v12, v9}, Lcom/android/launcher3/home/WorkspaceCellLayout;->setBgImage(IZ)V

    .line 1228
    :goto_8
    invoke-virtual {v5, v2}, Lcom/android/launcher3/home/WorkspaceCellLayout;->setBackgroundAlpha(F)V

    goto/16 :goto_2

    .line 1220
    :cond_b
    const/4 v9, 0x0

    goto :goto_7

    .line 1222
    :cond_c
    if-eqz p5, :cond_d

    .line 1223
    const/4 v9, 0x1

    const/4 v12, 0x0

    invoke-virtual {v5, v9, v12}, Lcom/android/launcher3/home/WorkspaceCellLayout;->setBgImage(IZ)V

    goto :goto_8

    .line 1225
    :cond_d
    const/4 v12, 0x4

    if-ne v8, v7, :cond_e

    const/4 v9, 0x1

    :goto_9
    invoke-virtual {v5, v12, v9}, Lcom/android/launcher3/home/WorkspaceCellLayout;->setBgImage(IZ)V

    goto :goto_8

    :cond_e
    const/4 v9, 0x0

    goto :goto_9

    .line 1231
    .end local v5    # "cl":Lcom/android/launcher3/home/WorkspaceCellLayout;
    .end local v10    # "screenId":J
    :cond_f
    return-void
.end method

.method private getStageAnimationDuration(II)I
    .locals 6
    .param p1, "fromStage"    # I
    .param p2, "toStage"    # I

    .prologue
    const v5, 0x7f0b001e

    const/4 v4, 0x5

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 994
    iget-object v1, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 996
    .local v0, "res":Landroid/content/res/Resources;
    if-ne p1, v2, :cond_1

    .line 997
    if-ne p2, v4, :cond_0

    .line 998
    const v1, 0x7f0b0025

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 1012
    :goto_0
    return v1

    .line 999
    :cond_0
    if-ne p2, v3, :cond_3

    .line 1000
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    goto :goto_0

    .line 1002
    :cond_1
    if-ne p1, v3, :cond_2

    .line 1003
    if-ne p2, v2, :cond_3

    .line 1004
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    goto :goto_0

    .line 1006
    :cond_2
    if-ne p1, v4, :cond_3

    .line 1007
    if-ne p2, v2, :cond_3

    .line 1008
    const v1, 0x7f0b0026

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    goto :goto_0

    .line 1012
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getStateAnimationDuration(I)I
    .locals 2
    .param p1, "toState"    # I

    .prologue
    .line 1016
    iget-object v1, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1018
    .local v0, "res":Landroid/content/res/Resources;
    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    .line 1019
    const v1, 0x7f0b0031

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 1028
    :goto_0
    return v1

    .line 1020
    :cond_0
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 1021
    const v1, 0x7f0b002c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    goto :goto_0

    .line 1022
    :cond_1
    const/4 v1, 0x5

    if-ne p1, v1, :cond_2

    .line 1023
    const v1, 0x7f0b002e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    goto :goto_0

    .line 1024
    :cond_2
    const/4 v1, 0x6

    if-ne p1, v1, :cond_3

    .line 1025
    const v1, 0x7f0b0030

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    goto :goto_0

    .line 1028
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getSwipeAnimationDuration(Z)I
    .locals 8
    .param p1, "enter"    # Z

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 972
    iget-object v5, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v5}, Lcom/android/launcher3/Utilities;->getFullScreenHeight(Landroid/app/Activity;)I

    move-result v4

    .line 973
    .local v4, "screenHeight":I
    iget-object v5, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    if-eqz v5, :cond_1

    .line 974
    iget-object v5, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    invoke-virtual {v5}, Lcom/android/launcher3/common/tray/TrayManager;->getTrayMovingRange()I

    move-result v3

    .line 975
    .local v3, "range":I
    div-int/lit8 v5, v4, 0x2

    if-ge v3, v5, :cond_0

    .line 976
    mul-int/lit8 v3, v3, 0x2

    .line 981
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getTranslationY()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 983
    .local v2, "offset":F
    if-eqz p1, :cond_2

    .line 984
    invoke-direct {p0, v7, v6}, Lcom/android/launcher3/home/HomeTransitionAnimation;->getStageAnimationDuration(II)I

    move-result v1

    .line 985
    .local v1, "durationMax":I
    int-to-float v5, v1

    int-to-float v6, v3

    div-float v6, v2, v6

    mul-float/2addr v5, v6

    const v6, 0x3f99999a    # 1.2f

    mul-float/2addr v5, v6

    int-to-float v6, v1

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    float-to-int v0, v5

    .line 990
    .local v0, "duration":I
    :goto_1
    return v0

    .line 979
    .end local v0    # "duration":I
    .end local v1    # "durationMax":I
    .end local v2    # "offset":F
    .end local v3    # "range":I
    :cond_1
    move v3, v4

    .restart local v3    # "range":I
    goto :goto_0

    .line 987
    .restart local v2    # "offset":F
    :cond_2
    invoke-direct {p0, v6, v7}, Lcom/android/launcher3/home/HomeTransitionAnimation;->getStageAnimationDuration(II)I

    move-result v1

    .line 988
    .restart local v1    # "durationMax":I
    int-to-float v5, v1

    const/high16 v6, 0x3f800000    # 1.0f

    int-to-float v7, v3

    div-float v7, v2, v7

    sub-float/2addr v6, v7

    mul-float/2addr v5, v6

    int-to-float v6, v1

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    float-to-int v0, v5

    .restart local v0    # "duration":I
    goto :goto_1
.end method

.method private setNormalStateView(Z)V
    .locals 10
    .param p1, "animated"    # Z

    .prologue
    const/4 v4, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 574
    sget-object v0, Lcom/android/launcher3/util/Talk;->INSTANCE:Lcom/android/launcher3/util/Talk;

    invoke-virtual {v0}, Lcom/android/launcher3/util/Talk;->isAccessibilityEnabled()Z

    move-result v6

    .line 576
    .local v6, "accessibilityEnabled":Z
    iget-object v0, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeController;->getWorkspace()Lcom/android/launcher3/home/Workspace;

    move-result-object v2

    .line 577
    .local v2, "workspace":Lcom/android/launcher3/home/Workspace;
    iget-object v0, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeController;->getOverviewPanel()Lcom/android/launcher3/home/OverviewPanel;

    move-result-object v8

    .line 578
    .local v8, "overviewPanel":Lcom/android/launcher3/home/OverviewPanel;
    iget-object v0, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeController;->getHotseat()Lcom/android/launcher3/home/Hotseat;

    move-result-object v7

    .line 579
    .local v7, "hotseat":Landroid/view/View;
    invoke-virtual {v2}, Lcom/android/launcher3/home/Workspace;->getPageIndicator()Lcom/android/launcher3/common/view/PageIndicator;

    move-result-object v9

    .line 580
    .local v9, "pageIndicator":Lcom/android/launcher3/common/view/PageIndicator;
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/launcher3/home/HomeTransitionAnimation;->getStateAnimationDuration(I)I

    move-result v5

    .line 582
    .local v5, "duration":I
    invoke-virtual {v8, v1}, Lcom/android/launcher3/home/OverviewPanel;->setAlpha(F)V

    .line 583
    invoke-static {v8, v6}, Lcom/android/launcher3/home/AlphaUpdateListener;->updateVisibility(Landroid/view/View;Z)V

    .line 584
    invoke-virtual {v7, v3}, Landroid/view/View;->setAlpha(F)V

    .line 585
    invoke-static {v7, v6}, Lcom/android/launcher3/home/AlphaUpdateListener;->updateVisibility(Landroid/view/View;Z)V

    .line 586
    invoke-virtual {v2, v3}, Lcom/android/launcher3/home/Workspace;->setScaleX(F)V

    .line 587
    invoke-virtual {v2, v3}, Lcom/android/launcher3/home/Workspace;->setScaleY(F)V

    .line 588
    invoke-virtual {v2, v1}, Lcom/android/launcher3/home/Workspace;->setTranslationY(F)V

    .line 590
    if-eqz v9, :cond_0

    .line 591
    invoke-virtual {v9, v1}, Lcom/android/launcher3/common/view/PageIndicator;->setTranslationY(F)V

    .line 594
    :cond_0
    if-eqz v6, :cond_1

    invoke-virtual {v8}, Lcom/android/launcher3/home/OverviewPanel;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 595
    invoke-virtual {v8, v4}, Lcom/android/launcher3/home/OverviewPanel;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x40

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    .line 599
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    move-object v0, p0

    move v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/home/HomeTransitionAnimation;->changeOverviewBackground(Landroid/animation/AnimatorSet;Lcom/android/launcher3/home/Workspace;ZZI)V

    .line 601
    iget-object v0, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1, v5}, Lcom/android/launcher3/home/HomeTransitionAnimation;->animateBackgroundDarken(Landroid/animation/AnimatorSet;ZII)V

    .line 602
    return-void
.end method


# virtual methods
.method getDragAnimation(ZLjava/util/HashMap;ZZZ)Landroid/animation/AnimatorSet;
    .locals 18
    .param p1, "animated"    # Z
    .param p3, "enter"    # Z
    .param p4, "fromWidget"    # Z
    .param p5, "fromSelectState"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;ZZZ)",
            "Landroid/animation/AnimatorSet;"
        }
    .end annotation

    .prologue
    .line 606
    .local p2, "layerViews":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/view/View;Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v5}, Lcom/android/launcher3/home/HomeController;->getWorkspace()Lcom/android/launcher3/home/Workspace;

    move-result-object v15

    .line 608
    .local v15, "workspace":Lcom/android/launcher3/home/Workspace;
    if-eqz p4, :cond_3

    .line 609
    sget-object v5, Lcom/android/launcher3/util/Talk;->INSTANCE:Lcom/android/launcher3/util/Talk;

    invoke-virtual {v5}, Lcom/android/launcher3/util/Talk;->isAccessibilityEnabled()Z

    move-result v4

    .line 610
    .local v4, "accessibilityEnabled":Z
    const/4 v5, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/launcher3/home/HomeTransitionAnimation;->getStateAnimationDuration(I)I

    move-result v11

    .line 611
    .local v11, "duration":I
    invoke-virtual {v15}, Lcom/android/launcher3/home/Workspace;->getPageIndicator()Lcom/android/launcher3/common/view/PageIndicator;

    move-result-object v12

    .line 612
    .local v12, "pageIndicator":Lcom/android/launcher3/common/view/PageIndicator;
    const/4 v13, 0x0

    .line 613
    .local v13, "pageIndicatorTranslationY":F
    const/16 v17, 0x0

    .line 615
    .local v17, "workspaceTranslationY":F
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/home/HomeTransitionAnimation;->cancelStateAnimation()V

    .line 616
    if-eqz p1, :cond_2

    .line 617
    invoke-static {}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    .line 619
    new-instance v16, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;

    move-object/from16 v0, v16

    invoke-direct {v0, v15}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;-><init>(Landroid/view/View;)V

    .line 620
    .local v16, "workspaceAnimator":Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;
    const/high16 v5, 0x3f800000    # 1.0f

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->scaleX(F)Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;

    move-result-object v5

    const/high16 v6, 0x3f800000    # 1.0f

    .line 621
    invoke-virtual {v5, v6}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->scaleY(F)Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;

    move-result-object v5

    const/4 v6, 0x0

    .line 622
    invoke-virtual {v5, v6}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->translationY(F)Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;

    move-result-object v5

    int-to-long v6, v11

    .line 623
    invoke-virtual {v5, v6, v7}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->setDuration(J)Landroid/animation/Animator;

    .line 624
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 626
    if-eqz v12, :cond_0

    .line 627
    new-instance v5, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;

    invoke-direct {v5, v12}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;-><init>(Landroid/view/View;)V

    const/4 v6, 0x0

    .line 628
    invoke-virtual {v5, v6}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->translationY(F)Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;

    move-result-object v14

    .line 629
    .local v14, "pageIndicatorY":Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;
    int-to-long v6, v11

    invoke-virtual {v14, v6, v7}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->setDuration(J)Landroid/animation/Animator;

    .line 630
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v14, v5}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 631
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v5, v14}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 634
    .end local v14    # "pageIndicatorY":Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;
    :cond_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    new-instance v6, Lcom/android/launcher3/home/HomeTransitionAnimation$4;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/android/launcher3/home/HomeTransitionAnimation$4;-><init>(Lcom/android/launcher3/home/HomeTransitionAnimation;)V

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 641
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    const/4 v7, 0x1

    const-wide/16 v8, -0x1

    const/4 v10, 0x1

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v10}, Lcom/android/launcher3/home/HomeTransitionAnimation;->animateSwipeHometray(Landroid/animation/AnimatorSet;ZJZ)V

    .line 651
    .end local v16    # "workspaceAnimator":Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v15, v1}, Lcom/android/launcher3/home/HomeTransitionAnimation;->changeDragBackground(Lcom/android/launcher3/home/Workspace;Z)V

    .line 652
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v5, v1, v4}, Lcom/android/launcher3/home/HomeTransitionAnimation;->animateExitAppsOrWidget(Landroid/animation/AnimatorSet;ZZ)V

    .line 653
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v5, v1, v6, v11}, Lcom/android/launcher3/home/HomeTransitionAnimation;->animateBackgroundDarken(Landroid/animation/AnimatorSet;ZII)V

    .line 659
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    .end local v4    # "accessibilityEnabled":Z
    .end local v11    # "duration":I
    .end local v12    # "pageIndicator":Lcom/android/launcher3/common/view/PageIndicator;
    .end local v13    # "pageIndicatorTranslationY":F
    .end local v17    # "workspaceTranslationY":F
    :goto_1
    return-object v5

    .line 643
    .restart local v4    # "accessibilityEnabled":Z
    .restart local v11    # "duration":I
    .restart local v12    # "pageIndicator":Lcom/android/launcher3/common/view/PageIndicator;
    .restart local v13    # "pageIndicatorTranslationY":F
    .restart local v17    # "workspaceTranslationY":F
    :cond_2
    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v15, v5}, Lcom/android/launcher3/home/Workspace;->setScaleX(F)V

    .line 644
    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v15, v5}, Lcom/android/launcher3/home/Workspace;->setScaleY(F)V

    .line 645
    const/4 v5, 0x0

    invoke-virtual {v15, v5}, Lcom/android/launcher3/home/Workspace;->setTranslationY(F)V

    .line 646
    if-eqz v12, :cond_1

    .line 647
    const/4 v5, 0x0

    invoke-virtual {v12, v5}, Lcom/android/launcher3/common/view/PageIndicator;->setTranslationY(F)V

    goto :goto_0

    .line 655
    .end local v4    # "accessibilityEnabled":Z
    .end local v11    # "duration":I
    .end local v12    # "pageIndicator":Lcom/android/launcher3/common/view/PageIndicator;
    .end local v13    # "pageIndicatorTranslationY":F
    .end local v17    # "workspaceTranslationY":F
    :cond_3
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v15, v1}, Lcom/android/launcher3/home/HomeTransitionAnimation;->changeDragBackground(Lcom/android/launcher3/home/Workspace;Z)V

    .line 656
    if-eqz p5, :cond_5

    if-nez p3, :cond_4

    const/4 v5, 0x1

    :goto_2
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v5}, Lcom/android/launcher3/home/HomeTransitionAnimation;->getSelectAnimation(ZLjava/util/HashMap;Z)Landroid/animation/AnimatorSet;

    move-result-object v5

    goto :goto_1

    :cond_4
    const/4 v5, 0x0

    goto :goto_2

    :cond_5
    const/4 v5, 0x0

    goto :goto_1
.end method

.method getEnterFromAppsAnimation(ZLjava/util/HashMap;)Landroid/animation/Animator;
    .locals 9
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
    const/4 v6, 0x0

    const/4 v3, 0x1

    const/high16 v5, 0x3f800000    # 1.0f

    .line 174
    sget-object v1, Lcom/android/launcher3/util/Talk;->INSTANCE:Lcom/android/launcher3/util/Talk;

    invoke-virtual {v1}, Lcom/android/launcher3/util/Talk;->isAccessibilityEnabled()Z

    move-result v0

    .line 176
    .local v0, "accessibilityEnabled":Z
    invoke-direct {p0}, Lcom/android/launcher3/home/HomeTransitionAnimation;->cancelStageAnimation()V

    .line 177
    if-eqz p1, :cond_1

    .line 178
    invoke-static {}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    .line 180
    iget-object v1, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportTraySwipeInteraction()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 183
    iget-object v2, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    const-wide/16 v4, -0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/launcher3/home/HomeTransitionAnimation;->animateSwipeHometray(Landroid/animation/AnimatorSet;ZJZ)V

    .line 203
    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    return-object v1

    .line 185
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    invoke-virtual {v2}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v2

    new-array v4, v3, [F

    aput v5, v4, v6

    invoke-static {v1, v2, v4}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 186
    .local v7, "alphaAnim":Landroid/animation/Animator;
    const/4 v1, 0x2

    invoke-direct {p0, v1, v3}, Lcom/android/launcher3/home/HomeTransitionAnimation;->getStageAnimationDuration(II)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v7, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 187
    iget-object v1, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, v7}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 188
    iget-object v1, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    new-instance v2, Lcom/android/launcher3/home/AlphaUpdateListener;

    iget-object v3, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    invoke-direct {v2, v3, v0}, Lcom/android/launcher3/home/AlphaUpdateListener;-><init>(Landroid/view/View;Z)V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    .line 191
    .end local v7    # "alphaAnim":Landroid/animation/Animator;
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 192
    iget-object v1, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setAlpha(F)V

    .line 193
    iget-object v1, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setScaleX(F)V

    .line 194
    iget-object v1, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setScaleY(F)V

    .line 195
    iget-object v1, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v1}, Lcom/android/launcher3/home/HomeController;->getHomePageIndicatorView()Landroid/view/View;

    move-result-object v8

    .line 196
    .local v8, "homePageIndicator":Landroid/view/View;
    if-eqz v8, :cond_2

    .line 197
    invoke-virtual {v8, v5}, Landroid/view/View;->setScaleX(F)V

    .line 198
    invoke-virtual {v8, v5}, Landroid/view/View;->setScaleY(F)V

    .line 200
    :cond_2
    iget-object v1, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    invoke-static {v1, v0}, Lcom/android/launcher3/home/AlphaUpdateListener;->updateVisibility(Landroid/view/View;Z)V

    goto :goto_0
.end method

.method getEnterFromAppsPickerAnimation(ZLjava/util/HashMap;)Landroid/animation/Animator;
    .locals 6
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

    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v3, 0x3f800000    # 1.0f

    .line 279
    sget-object v2, Lcom/android/launcher3/util/Talk;->INSTANCE:Lcom/android/launcher3/util/Talk;

    invoke-virtual {v2}, Lcom/android/launcher3/util/Talk;->isAccessibilityEnabled()Z

    move-result v0

    .line 281
    .local v0, "accessibilityEnabled":Z
    invoke-direct {p0, p1}, Lcom/android/launcher3/home/HomeTransitionAnimation;->setNormalStateView(Z)V

    .line 282
    invoke-direct {p0}, Lcom/android/launcher3/home/HomeTransitionAnimation;->cancelStageAnimation()V

    .line 284
    if-eqz p1, :cond_0

    .line 285
    invoke-static {}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    .line 287
    iget-object v2, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    iget-object v2, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    const v3, 0x7f050006

    invoke-static {v2, v3}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v1

    .line 290
    .local v1, "enterAnimator":Landroid/animation/Animator;
    iget-object v2, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 291
    new-instance v2, Lcom/android/launcher3/home/StageChangeListener;

    iget-object v3, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    invoke-direct {v2, v3, v0, v5}, Lcom/android/launcher3/home/StageChangeListener;-><init>(Landroid/view/View;ZZ)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 292
    iget-object v2, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 294
    iget-object v2, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/view/View;->setPivotX(F)V

    .line 295
    iget-object v2, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/view/View;->setPivotY(F)V

    .line 303
    .end local v1    # "enterAnimator":Landroid/animation/Animator;
    :goto_0
    iget-object v2, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    return-object v2

    .line 297
    :cond_0
    iget-object v2, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setScaleX(F)V

    .line 298
    iget-object v2, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setScaleY(F)V

    .line 299
    iget-object v2, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 300
    iget-object v2, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    invoke-static {v2, v0}, Lcom/android/launcher3/home/AlphaUpdateListener;->updateVisibility(Landroid/view/View;Z)V

    goto :goto_0
.end method

.method getEnterFromFolderAnimation(ZLjava/util/HashMap;Landroid/view/View;)Landroid/animation/Animator;
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
    .line 207
    .local p2, "layerViews":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/view/View;Ljava/lang/Integer;>;"
    sget-object v6, Lcom/android/launcher3/util/Talk;->INSTANCE:Lcom/android/launcher3/util/Talk;

    invoke-virtual {v6}, Lcom/android/launcher3/util/Talk;->isAccessibilityEnabled()Z

    move-result v0

    .line 209
    .local v0, "accessibilityEnabled":Z
    invoke-direct {p0}, Lcom/android/launcher3/home/HomeTransitionAnimation;->cancelStageAnimation()V

    .line 210
    if-eqz p1, :cond_2

    .line 211
    invoke-static {}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v6

    iput-object v6, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    .line 212
    const/4 v6, 0x5

    const/4 v7, 0x1

    invoke-direct {p0, v6, v7}, Lcom/android/launcher3/home/HomeTransitionAnimation;->getStageAnimationDuration(II)I

    move-result v2

    .line 214
    .local v2, "duration":I
    iget-object v6, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p2, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    const/4 v6, 0x2

    new-array v3, v6, [I

    .line 217
    .local v3, "iconLoc":[I
    if-eqz p3, :cond_1

    .line 218
    invoke-virtual {p3, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 219
    const/4 v6, 0x0

    aget v6, v3, v6

    if-gez v6, :cond_0

    const/4 v6, 0x1

    aget v6, v3, v6

    if-gez v6, :cond_0

    .line 220
    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    aput v7, v3, v6

    .line 221
    const/4 v6, 0x1

    iget-object v7, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    aput v7, v3, v6

    .line 227
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    const/4 v7, 0x0

    aget v7, v3, v7

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setPivotX(F)V

    .line 228
    iget-object v6, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    const/4 v7, 0x1

    aget v7, v3, v7

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setPivotY(F)V

    .line 230
    iget-object v6, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    sget-object v7, Landroid/view/View;->ALPHA:Landroid/util/Property;

    invoke-virtual {v7}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    new-array v8, v8, [F

    fill-array-data v8, :array_0

    invoke-static {v6, v7, v8}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 231
    .local v1, "alphaAnim":Landroid/animation/Animator;
    int-to-long v6, v2

    invoke-virtual {v1, v6, v7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 232
    iget-object v6, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mSineInOut33:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v6}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 233
    iget-object v6, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v6, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 235
    iget-object v6, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    sget-object v7, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    invoke-virtual {v7}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    new-array v8, v8, [F

    const/4 v9, 0x0

    iget v10, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mFolderBgGrowFactor:F

    aput v10, v8, v9

    const/4 v9, 0x1

    const/high16 v10, 0x3f800000    # 1.0f

    aput v10, v8, v9

    invoke-static {v6, v7, v8}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 236
    .local v4, "scaleXAnim":Landroid/animation/Animator;
    int-to-long v6, v2

    invoke-virtual {v4, v6, v7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 237
    iget-object v6, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mSineInOut80:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v6}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 238
    iget-object v6, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v6, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 240
    iget-object v6, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    sget-object v7, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    invoke-virtual {v7}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    new-array v8, v8, [F

    const/4 v9, 0x0

    iget v10, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mFolderBgGrowFactor:F

    aput v10, v8, v9

    const/4 v9, 0x1

    const/high16 v10, 0x3f800000    # 1.0f

    aput v10, v8, v9

    invoke-static {v6, v7, v8}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 241
    .local v5, "scaleYAnim":Landroid/animation/Animator;
    int-to-long v6, v2

    invoke-virtual {v5, v6, v7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 242
    iget-object v6, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mSineInOut80:Landroid/view/animation/Interpolator;

    invoke-virtual {v5, v6}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 243
    iget-object v6, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v6, v5}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 245
    iget-object v6, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    new-instance v7, Lcom/android/launcher3/home/HomeTransitionAnimation$1;

    invoke-direct {v7, p0}, Lcom/android/launcher3/home/HomeTransitionAnimation$1;-><init>(Lcom/android/launcher3/home/HomeTransitionAnimation;)V

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 275
    .end local v1    # "alphaAnim":Landroid/animation/Animator;
    .end local v2    # "duration":I
    .end local v3    # "iconLoc":[I
    .end local v4    # "scaleXAnim":Landroid/animation/Animator;
    .end local v5    # "scaleYAnim":Landroid/animation/Animator;
    :goto_1
    iget-object v6, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    return-object v6

    .line 224
    .restart local v2    # "duration":I
    .restart local v3    # "iconLoc":[I
    :cond_1
    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    aput v7, v3, v6

    .line 225
    const/4 v6, 0x1

    iget-object v7, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    aput v7, v3, v6

    goto/16 :goto_0

    .line 271
    .end local v2    # "duration":I
    .end local v3    # "iconLoc":[I
    :cond_2
    iget-object v6, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v6, v7}, Landroid/view/View;->setAlpha(F)V

    .line 272
    iget-object v6, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    invoke-static {v6, v0}, Lcom/android/launcher3/home/AlphaUpdateListener;->updateVisibility(Landroid/view/View;Z)V

    goto :goto_1

    .line 230
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method getEnterFromWidgetsAnimation(ZLjava/util/HashMap;Z)Landroid/animation/Animator;
    .locals 6
    .param p1, "animated"    # Z
    .param p3, "toNormal"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;Z)",
            "Landroid/animation/Animator;"
        }
    .end annotation

    .prologue
    .local p2, "layerViews":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/view/View;Ljava/lang/Integer;>;"
    const/4 v5, 0x1

    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v3, 0x3f800000    # 1.0f

    .line 308
    sget-object v2, Lcom/android/launcher3/util/Talk;->INSTANCE:Lcom/android/launcher3/util/Talk;

    invoke-virtual {v2}, Lcom/android/launcher3/util/Talk;->isAccessibilityEnabled()Z

    move-result v0

    .line 310
    .local v0, "accessibilityEnabled":Z
    if-eqz p3, :cond_0

    .line 311
    invoke-direct {p0, p1}, Lcom/android/launcher3/home/HomeTransitionAnimation;->setNormalStateView(Z)V

    .line 314
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher3/home/HomeTransitionAnimation;->cancelStageAnimation()V

    .line 315
    if-eqz p1, :cond_1

    .line 316
    invoke-static {}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    .line 318
    iget-object v2, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    iget-object v2, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    const v3, 0x7f050007

    invoke-static {v2, v3}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v1

    .line 321
    .local v1, "enterAnimator":Landroid/animation/Animator;
    iget-object v2, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 322
    new-instance v2, Lcom/android/launcher3/home/StageChangeListener;

    iget-object v3, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    invoke-direct {v2, v3, v0, v5}, Lcom/android/launcher3/home/StageChangeListener;-><init>(Landroid/view/View;ZZ)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 323
    iget-object v2, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 325
    iget-object v2, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/view/View;->setPivotX(F)V

    .line 326
    iget-object v2, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/view/View;->setPivotY(F)V

    .line 334
    .end local v1    # "enterAnimator":Landroid/animation/Animator;
    :goto_0
    iget-object v2, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    return-object v2

    .line 328
    :cond_1
    iget-object v2, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setScaleX(F)V

    .line 329
    iget-object v2, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setScaleY(F)V

    .line 330
    iget-object v2, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 331
    iget-object v2, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    invoke-static {v2, v0}, Lcom/android/launcher3/home/AlphaUpdateListener;->updateVisibility(Landroid/view/View;Z)V

    goto :goto_0
.end method

.method getExitToAppsAnimation(ZLjava/util/HashMap;)Landroid/animation/Animator;
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
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 338
    sget-object v1, Lcom/android/launcher3/util/Talk;->INSTANCE:Lcom/android/launcher3/util/Talk;

    invoke-virtual {v1}, Lcom/android/launcher3/util/Talk;->isAccessibilityEnabled()Z

    move-result v0

    .line 340
    .local v0, "accessibilityEnabled":Z
    invoke-direct {p0}, Lcom/android/launcher3/home/HomeTransitionAnimation;->cancelStageAnimation()V

    .line 341
    if-eqz p1, :cond_1

    .line 342
    invoke-static {}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    .line 344
    iget-object v1, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportTraySwipeInteraction()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 347
    iget-object v2, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    const-wide/16 v4, -0x1

    move-object v1, p0

    move v6, v3

    invoke-direct/range {v1 .. v6}, Lcom/android/launcher3/home/HomeTransitionAnimation;->animateSwipeHometray(Landroid/animation/AnimatorSet;ZJZ)V

    .line 361
    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    return-object v1

    .line 349
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    invoke-virtual {v2}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v2

    new-array v4, v5, [F

    aput v6, v4, v3

    invoke-static {v1, v2, v4}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 350
    .local v7, "alphaAnim":Landroid/animation/Animator;
    const/4 v1, 0x2

    invoke-direct {p0, v5, v1}, Lcom/android/launcher3/home/HomeTransitionAnimation;->getStageAnimationDuration(II)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v7, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 351
    iget-object v1, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, v7}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 352
    iget-object v1, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    new-instance v2, Lcom/android/launcher3/home/AlphaUpdateListener;

    iget-object v3, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    invoke-direct {v2, v3, v0}, Lcom/android/launcher3/home/AlphaUpdateListener;-><init>(Landroid/view/View;Z)V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    .line 355
    .end local v7    # "alphaAnim":Landroid/animation/Animator;
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09014b

    .line 356
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    .line 355
    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 357
    iget-object v1, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setAlpha(F)V

    .line 358
    iget-object v1, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    invoke-static {v1, v0}, Lcom/android/launcher3/home/AlphaUpdateListener;->updateVisibility(Landroid/view/View;Z)V

    goto :goto_0
.end method

.method getExitToFolderAnimation(ZLjava/util/HashMap;Landroid/view/View;)Landroid/animation/Animator;
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
    .line 365
    .local p2, "layerViews":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/view/View;Ljava/lang/Integer;>;"
    sget-object v6, Lcom/android/launcher3/util/Talk;->INSTANCE:Lcom/android/launcher3/util/Talk;

    invoke-virtual {v6}, Lcom/android/launcher3/util/Talk;->isAccessibilityEnabled()Z

    move-result v0

    .line 367
    .local v0, "accessibilityEnabled":Z
    invoke-direct {p0}, Lcom/android/launcher3/home/HomeTransitionAnimation;->cancelStageAnimation()V

    .line 368
    if-eqz p1, :cond_1

    .line 369
    invoke-static {}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v6

    iput-object v6, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    .line 370
    const/4 v6, 0x1

    const/4 v7, 0x5

    invoke-direct {p0, v6, v7}, Lcom/android/launcher3/home/HomeTransitionAnimation;->getStageAnimationDuration(II)I

    move-result v2

    .line 372
    .local v2, "duration":I
    iget-object v6, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p2, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    const/4 v6, 0x2

    new-array v3, v6, [I

    .line 375
    .local v3, "iconLoc":[I
    if-eqz p3, :cond_0

    .line 376
    invoke-virtual {p3, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 381
    :goto_0
    iget-object v6, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    const/4 v7, 0x0

    aget v7, v3, v7

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setPivotX(F)V

    .line 382
    iget-object v6, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    const/4 v7, 0x1

    aget v7, v3, v7

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setPivotY(F)V

    .line 384
    iget-object v6, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

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

    .line 385
    .local v1, "alphaAnim":Landroid/animation/Animator;
    div-int/lit8 v6, v2, 0x2

    int-to-long v6, v6

    invoke-virtual {v1, v6, v7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 386
    iget-object v6, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mSineInOut70:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v6}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 387
    iget-object v6, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v6, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 389
    iget-object v6, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    sget-object v7, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    invoke-virtual {v7}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    new-array v8, v8, [F

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    aput v10, v8, v9

    const/4 v9, 0x1

    iget v10, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mFolderBgGrowFactor:F

    aput v10, v8, v9

    invoke-static {v6, v7, v8}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 390
    .local v4, "scaleXAnim":Landroid/animation/Animator;
    int-to-long v6, v2

    invoke-virtual {v4, v6, v7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 391
    iget-object v6, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mSineInOut80:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v6}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 392
    iget-object v6, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v6, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 394
    iget-object v6, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    sget-object v7, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    invoke-virtual {v7}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    new-array v8, v8, [F

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    aput v10, v8, v9

    const/4 v9, 0x1

    iget v10, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mFolderBgGrowFactor:F

    aput v10, v8, v9

    invoke-static {v6, v7, v8}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 395
    .local v5, "scaleYAnim":Landroid/animation/Animator;
    int-to-long v6, v2

    invoke-virtual {v5, v6, v7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 396
    iget-object v6, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mSineInOut80:Landroid/view/animation/Interpolator;

    invoke-virtual {v5, v6}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 397
    iget-object v6, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v6, v5}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 399
    iget-object v6, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    new-instance v7, Lcom/android/launcher3/home/HomeTransitionAnimation$2;

    invoke-direct {v7, p0}, Lcom/android/launcher3/home/HomeTransitionAnimation$2;-><init>(Lcom/android/launcher3/home/HomeTransitionAnimation;)V

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 425
    .end local v1    # "alphaAnim":Landroid/animation/Animator;
    .end local v2    # "duration":I
    .end local v3    # "iconLoc":[I
    .end local v4    # "scaleXAnim":Landroid/animation/Animator;
    .end local v5    # "scaleYAnim":Landroid/animation/Animator;
    :goto_1
    iget-object v6, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    return-object v6

    .line 378
    .restart local v2    # "duration":I
    .restart local v3    # "iconLoc":[I
    :cond_0
    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    aput v7, v3, v6

    .line 379
    const/4 v6, 0x1

    iget-object v7, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    aput v7, v3, v6

    goto/16 :goto_0

    .line 421
    .end local v2    # "duration":I
    .end local v3    # "iconLoc":[I
    :cond_1
    iget-object v6, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->setAlpha(F)V

    .line 422
    iget-object v6, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    invoke-static {v6, v0}, Lcom/android/launcher3/home/AlphaUpdateListener;->updateVisibility(Landroid/view/View;Z)V

    goto :goto_1
.end method

.method getExitToWidgetsAnimation(ZLjava/util/HashMap;)Landroid/animation/Animator;
    .locals 6
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
    const/high16 v5, 0x40000000    # 2.0f

    .line 429
    sget-object v2, Lcom/android/launcher3/util/Talk;->INSTANCE:Lcom/android/launcher3/util/Talk;

    invoke-virtual {v2}, Lcom/android/launcher3/util/Talk;->isAccessibilityEnabled()Z

    move-result v0

    .line 431
    .local v0, "accessibilityEnabled":Z
    invoke-direct {p0}, Lcom/android/launcher3/home/HomeTransitionAnimation;->cancelStageAnimation()V

    .line 432
    if-eqz p1, :cond_0

    .line 433
    invoke-static {}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    .line 435
    iget-object v2, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    iget-object v2, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    const v3, 0x7f05000c

    invoke-static {v2, v3}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v1

    .line 438
    .local v1, "exitAnimator":Landroid/animation/Animator;
    iget-object v2, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 439
    new-instance v2, Lcom/android/launcher3/home/StageChangeListener;

    iget-object v3, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v0, v4}, Lcom/android/launcher3/home/StageChangeListener;-><init>(Landroid/view/View;ZZ)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 440
    iget-object v2, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 442
    iget-object v2, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v5

    invoke-virtual {v2, v3}, Landroid/view/View;->setPivotX(F)V

    .line 443
    iget-object v2, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v5

    invoke-virtual {v2, v3}, Landroid/view/View;->setPivotY(F)V

    .line 449
    .end local v1    # "exitAnimator":Landroid/animation/Animator;
    :goto_0
    iget-object v2, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    return-object v2

    .line 445
    :cond_0
    iget-object v2, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 446
    iget-object v2, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    invoke-static {v2, v0}, Lcom/android/launcher3/home/AlphaUpdateListener;->updateVisibility(Landroid/view/View;Z)V

    goto :goto_0
.end method

.method getOverviewAnimation(ZLjava/util/HashMap;ZZ)Landroid/animation/AnimatorSet;
    .locals 27
    .param p1, "animated"    # Z
    .param p3, "stageChanged"    # Z
    .param p4, "enter"    # Z
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
    .line 454
    .local p2, "layerViews":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/view/View;Ljava/lang/Integer;>;"
    sget-object v2, Lcom/android/launcher3/util/Talk;->INSTANCE:Lcom/android/launcher3/util/Talk;

    invoke-virtual {v2}, Lcom/android/launcher3/util/Talk;->isAccessibilityEnabled()Z

    move-result v9

    .line 456
    .local v9, "accessibilityEnabled":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    .line 458
    .local v22, "res":Landroid/content/res/Resources;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v2}, Lcom/android/launcher3/home/HomeController;->getWorkspace()Lcom/android/launcher3/home/Workspace;

    move-result-object v23

    .line 459
    .local v23, "workspace":Lcom/android/launcher3/home/Workspace;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v2}, Lcom/android/launcher3/home/HomeController;->getOverviewPanel()Lcom/android/launcher3/home/OverviewPanel;

    move-result-object v14

    .line 460
    .local v14, "overviewPanel":Lcom/android/launcher3/home/OverviewPanel;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v2}, Lcom/android/launcher3/home/HomeController;->getHotseat()Lcom/android/launcher3/home/Hotseat;

    move-result-object v11

    .line 461
    .local v11, "hotseat":Landroid/view/View;
    invoke-virtual/range {v23 .. v23}, Lcom/android/launcher3/home/Workspace;->getPageIndicator()Lcom/android/launcher3/common/view/PageIndicator;

    move-result-object v17

    .line 463
    .local v17, "pageIndicator":Lcom/android/launcher3/common/view/PageIndicator;
    const/4 v2, 0x4

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/launcher3/home/HomeTransitionAnimation;->getStateAnimationDuration(I)I

    move-result v10

    .line 464
    .local v10, "duration":I
    if-eqz p4, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mOverviewShrinkFactor:F

    move/from16 v25, v0

    .line 465
    .local v25, "workspaceShrinkFactor":F
    :goto_0
    if-eqz p4, :cond_4

    const v2, 0x7f090026

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v0, v2

    move/from16 v26, v0

    .line 467
    .local v26, "workspaceTranslationY":F
    :goto_1
    if-eqz p4, :cond_5

    const/4 v13, 0x0

    .line 468
    .local v13, "hotseatAlphaValue":F
    :goto_2
    if-eqz p4, :cond_6

    const/high16 v16, 0x3f800000    # 1.0f

    .line 470
    .local v16, "overviewPanelAlphaValue":F
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v2

    iget-object v2, v2, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v2}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getIndicatorBottom()I

    move-result v18

    .line 471
    .local v18, "pageIndicatorMarginBottomNormal":I
    const v2, 0x7f090029

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v19

    .line 472
    .local v19, "pageIndicatorMarginBottomOverview":I
    if-eqz p4, :cond_7

    sub-int v2, v18, v19

    int-to-float v0, v2

    move/from16 v20, v0

    .line 474
    .local v20, "pageIndicatorTranslationY":F
    :goto_4
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/home/HomeTransitionAnimation;->cancelStateAnimation()V

    .line 475
    if-eqz p1, :cond_9

    .line 476
    invoke-static {}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    .line 478
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 481
    new-instance v24, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;-><init>(Landroid/view/View;)V

    .line 482
    .local v24, "workspaceAnimator":Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;
    invoke-virtual/range {v24 .. v25}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->scaleX(F)Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;

    .line 483
    invoke-virtual/range {v24 .. v25}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->scaleY(F)Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;

    .line 484
    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->translationY(F)Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;

    .line 485
    int-to-long v2, v10

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->setDuration(J)Landroid/animation/Animator;

    .line 486
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 488
    if-eqz v17, :cond_0

    .line 489
    new-instance v2, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;

    move-object/from16 v0, v17

    invoke-direct {v2, v0}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;-><init>(Landroid/view/View;)V

    .line 490
    move/from16 v0, v20

    invoke-virtual {v2, v0}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->translationY(F)Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;

    move-result-object v21

    .line 491
    .local v21, "pageIndicatorY":Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;
    int-to-long v2, v10

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->setDuration(J)Landroid/animation/Animator;

    .line 492
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 493
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 496
    .end local v21    # "pageIndicatorY":Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;
    :cond_0
    new-instance v2, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;

    invoke-direct {v2, v11}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;-><init>(Landroid/view/View;)V

    .line 497
    invoke-virtual {v2, v13}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->alpha(F)Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;

    move-result-object v12

    .line 498
    .local v12, "hotseatAlpha":Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;
    new-instance v2, Lcom/android/launcher3/home/AlphaUpdateListener;

    invoke-direct {v2, v11, v9}, Lcom/android/launcher3/home/AlphaUpdateListener;-><init>(Landroid/view/View;Z)V

    invoke-virtual {v12, v2}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 500
    new-instance v2, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;

    invoke-direct {v2, v14}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;-><init>(Landroid/view/View;)V

    .line 501
    move/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->alpha(F)Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;

    move-result-object v15

    .line 502
    .local v15, "overviewPanelAlpha":Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;
    new-instance v2, Lcom/android/launcher3/home/AlphaUpdateListener;

    invoke-direct {v2, v14, v9}, Lcom/android/launcher3/home/AlphaUpdateListener;-><init>(Landroid/view/View;Z)V

    invoke-virtual {v15, v2}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 505
    if-eqz p4, :cond_8

    .line 506
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-direct {v2, v3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v12, v2}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 507
    const/4 v2, 0x0

    invoke-virtual {v15, v2}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 513
    :goto_5
    int-to-long v2, v10

    invoke-virtual {v15, v2, v3}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->setDuration(J)Landroid/animation/Animator;

    .line 514
    int-to-long v2, v10

    invoke-virtual {v12, v2, v3}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->setDuration(J)Landroid/animation/Animator;

    .line 516
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v2, v15}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 517
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v2, v12}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 518
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    new-instance v3, Lcom/android/launcher3/home/HomeTransitionAnimation$3;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v9, v14}, Lcom/android/launcher3/home/HomeTransitionAnimation$3;-><init>(Lcom/android/launcher3/home/HomeTransitionAnimation;ZLcom/android/launcher3/home/OverviewPanel;)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 541
    if-eqz p3, :cond_1

    .line 542
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    const/4 v5, 0x1

    const-wide/16 v6, -0x1

    const/4 v8, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/launcher3/home/HomeTransitionAnimation;->animateSwipeHometray(Landroid/animation/AnimatorSet;ZJZ)V

    .line 562
    .end local v12    # "hotseatAlpha":Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;
    .end local v15    # "overviewPanelAlpha":Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;
    .end local v24    # "workspaceAnimator":Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;
    :cond_1
    :goto_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    move-object/from16 v2, p0

    move-object/from16 v4, v23

    move/from16 v5, p1

    move/from16 v6, p4

    move v7, v10

    invoke-direct/range {v2 .. v7}, Lcom/android/launcher3/home/HomeTransitionAnimation;->changeOverviewBackground(Landroid/animation/AnimatorSet;Lcom/android/launcher3/home/Workspace;ZZI)V

    .line 564
    if-eqz p3, :cond_2

    .line 565
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v2, v1, v9}, Lcom/android/launcher3/home/HomeTransitionAnimation;->animateExitAppsOrWidget(Landroid/animation/AnimatorSet;ZZ)V

    .line 568
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    if-eqz p4, :cond_b

    const/4 v2, 0x4

    :goto_7
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v3, v1, v2, v10}, Lcom/android/launcher3/home/HomeTransitionAnimation;->animateBackgroundDarken(Landroid/animation/AnimatorSet;ZII)V

    .line 570
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    return-object v2

    .line 464
    .end local v13    # "hotseatAlphaValue":F
    .end local v16    # "overviewPanelAlphaValue":F
    .end local v18    # "pageIndicatorMarginBottomNormal":I
    .end local v19    # "pageIndicatorMarginBottomOverview":I
    .end local v20    # "pageIndicatorTranslationY":F
    .end local v25    # "workspaceShrinkFactor":F
    .end local v26    # "workspaceTranslationY":F
    :cond_3
    const/high16 v25, 0x3f800000    # 1.0f

    goto/16 :goto_0

    .line 465
    .restart local v25    # "workspaceShrinkFactor":F
    :cond_4
    const/16 v26, 0x0

    goto/16 :goto_1

    .line 467
    .restart local v26    # "workspaceTranslationY":F
    :cond_5
    const/high16 v13, 0x3f800000    # 1.0f

    goto/16 :goto_2

    .line 468
    .restart local v13    # "hotseatAlphaValue":F
    :cond_6
    const/16 v16, 0x0

    goto/16 :goto_3

    .line 472
    .restart local v16    # "overviewPanelAlphaValue":F
    .restart local v18    # "pageIndicatorMarginBottomNormal":I
    .restart local v19    # "pageIndicatorMarginBottomOverview":I
    :cond_7
    const/16 v20, 0x0

    goto/16 :goto_4

    .line 509
    .restart local v12    # "hotseatAlpha":Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;
    .restart local v15    # "overviewPanelAlpha":Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;
    .restart local v20    # "pageIndicatorTranslationY":F
    .restart local v24    # "workspaceAnimator":Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;
    :cond_8
    const/4 v2, 0x0

    invoke-virtual {v12, v2}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 510
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-direct {v2, v3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v15, v2}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto/16 :goto_5

    .line 545
    .end local v12    # "hotseatAlpha":Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;
    .end local v15    # "overviewPanelAlpha":Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;
    .end local v24    # "workspaceAnimator":Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;
    :cond_9
    move/from16 v0, v16

    invoke-virtual {v14, v0}, Lcom/android/launcher3/home/OverviewPanel;->setAlpha(F)V

    .line 546
    invoke-static {v14, v9}, Lcom/android/launcher3/home/AlphaUpdateListener;->updateVisibility(Landroid/view/View;Z)V

    .line 547
    invoke-virtual {v11, v13}, Landroid/view/View;->setAlpha(F)V

    .line 548
    invoke-static {v11, v9}, Lcom/android/launcher3/home/AlphaUpdateListener;->updateVisibility(Landroid/view/View;Z)V

    .line 549
    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/Workspace;->setScaleX(F)V

    .line 550
    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/Workspace;->setScaleY(F)V

    .line 551
    move-object/from16 v0, v23

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/Workspace;->setTranslationY(F)V

    .line 552
    if-eqz v17, :cond_a

    .line 553
    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/view/PageIndicator;->setTranslationY(F)V

    .line 556
    :cond_a
    if-eqz v9, :cond_1

    invoke-virtual {v14}, Lcom/android/launcher3/home/OverviewPanel;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    .line 557
    const/4 v2, 0x0

    invoke-virtual {v14, v2}, Lcom/android/launcher3/home/OverviewPanel;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x40

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    goto/16 :goto_6

    .line 568
    :cond_b
    const/4 v2, 0x1

    goto :goto_7
.end method

.method getScreenGridAnimation(ZLjava/util/HashMap;ZZZ)Landroid/animation/AnimatorSet;
    .locals 38
    .param p1, "animated"    # Z
    .param p3, "stageChanged"    # Z
    .param p4, "enter"    # Z
    .param p5, "toNormal"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;ZZZ)",
            "Landroid/animation/AnimatorSet;"
        }
    .end annotation

    .prologue
    .line 723
    .local p2, "layerViews":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/view/View;Ljava/lang/Integer;>;"
    sget-object v2, Lcom/android/launcher3/util/Talk;->INSTANCE:Lcom/android/launcher3/util/Talk;

    invoke-virtual {v2}, Lcom/android/launcher3/util/Talk;->isAccessibilityEnabled()Z

    move-result v4

    .line 725
    .local v4, "accessibilityEnabled":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    .line 727
    .local v27, "res":Landroid/content/res/Resources;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v2}, Lcom/android/launcher3/home/HomeController;->getWorkspace()Lcom/android/launcher3/home/Workspace;

    move-result-object v9

    .line 728
    .local v9, "workspace":Lcom/android/launcher3/home/Workspace;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v2}, Lcom/android/launcher3/home/HomeController;->getOverviewPanel()Lcom/android/launcher3/home/OverviewPanel;

    move-result-object v5

    .line 729
    .local v5, "overviewPanel":Lcom/android/launcher3/home/OverviewPanel;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v2}, Lcom/android/launcher3/home/HomeController;->getHotseat()Lcom/android/launcher3/home/Hotseat;

    move-result-object v15

    .line 730
    .local v15, "hotseat":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v2}, Lcom/android/launcher3/home/HomeController;->getScreenGridPanel()Lcom/android/launcher3/home/ScreenGridPanel;

    move-result-object v29

    .line 731
    .local v29, "screengridPanel":Lcom/android/launcher3/home/ScreenGridPanel;
    invoke-virtual {v9}, Lcom/android/launcher3/home/Workspace;->getPageIndicator()Lcom/android/launcher3/common/view/PageIndicator;

    move-result-object v21

    .line 732
    .local v21, "pageIndicator":Lcom/android/launcher3/common/view/PageIndicator;
    invoke-virtual/range {v29 .. v29}, Lcom/android/launcher3/home/ScreenGridPanel;->getScreenGridTopConatiner()Landroid/view/View;

    move-result-object v7

    .line 734
    .local v7, "screenGridTopContainer":Landroid/view/View;
    const/4 v2, 0x5

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/launcher3/home/HomeTransitionAnimation;->getStateAnimationDuration(I)I

    move-result v12

    .line 735
    .local v12, "duration":I
    if-eqz p4, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mScreenGridShrinkFactor:F

    move/from16 v34, v0

    .line 737
    .local v34, "workspaceShrinkFactor":F
    :goto_0
    const v2, 0x7f090026

    .line 738
    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v0, v2

    move/from16 v35, v0

    .line 739
    .local v35, "workspaceTranslationOverviewY":F
    const v2, 0x7f090027

    .line 740
    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v0, v2

    move/from16 v36, v0

    .line 741
    .local v36, "workspaceTranslationScreengridY":F
    if-eqz p5, :cond_6

    const/16 v37, 0x0

    .line 744
    .local v37, "workspaceTranslationY":F
    :goto_1
    if-eqz p5, :cond_8

    const/high16 v17, 0x3f800000    # 1.0f

    .line 745
    .local v17, "hotseatAlphaValue":F
    :goto_2
    if-eqz p4, :cond_9

    const/16 v19, 0x0

    .line 746
    .local v19, "overviewPanelAlphaValue":F
    :goto_3
    if-eqz p4, :cond_b

    const/high16 v28, 0x3f800000    # 1.0f

    .line 747
    .local v28, "screengridAlphaValue":F
    :goto_4
    invoke-virtual {v9}, Lcom/android/launcher3/home/Workspace;->getCurrentPage()I

    move-result v14

    .line 748
    .local v14, "currentPage":I
    invoke-virtual {v9}, Lcom/android/launcher3/home/Workspace;->getPageCount()I

    move-result v20

    .line 749
    .local v20, "pageCount":I
    invoke-virtual {v9, v14}, Lcom/android/launcher3/home/Workspace;->getLayoutTransitionOffsetForPage(I)I

    move-result v2

    mul-int/lit8 v3, v2, 0x2

    sget-boolean v2, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v2, :cond_c

    sub-int v2, v20, v14

    :goto_5
    mul-int v33, v3, v2

    .line 752
    .local v33, "workspaceOffsetX":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 753
    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v2

    iget-object v2, v2, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v2}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getIndicatorBottom()I

    move-result v22

    .line 754
    .local v22, "pageIndicatorMarginBottomNormal":I
    const v2, 0x7f090029

    .line 755
    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v23

    .line 756
    .local v23, "pageIndicatorMarginBottomOverview":I
    const v2, 0x7f09002a

    .line 757
    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v24

    .line 758
    .local v24, "pageIndicatorMarginBottomScreenGrid":I
    if-eqz p5, :cond_d

    const/16 v25, 0x0

    .line 762
    .end local v24    # "pageIndicatorMarginBottomScreenGrid":I
    .local v25, "pageIndicatorTranslationY":F
    :goto_6
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/home/HomeTransitionAnimation;->cancelStateAnimation()V

    .line 764
    if-eqz p5, :cond_0

    if-eqz v33, :cond_0

    .line 765
    invoke-virtual {v9, v14}, Lcom/android/launcher3/home/Workspace;->getScrollForPage(I)I

    move-result v2

    add-int v2, v2, v33

    const/4 v3, 0x0

    invoke-virtual {v9, v2, v3}, Lcom/android/launcher3/home/Workspace;->scrollTo(II)V

    .line 768
    :cond_0
    if-eqz p1, :cond_10

    .line 769
    invoke-static {}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    .line 771
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v15, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 772
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 773
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 774
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 776
    new-instance v32, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;

    move-object/from16 v0, v32

    invoke-direct {v0, v9}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;-><init>(Landroid/view/View;)V

    .line 777
    .local v32, "workspaceAnimator":Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;
    move-object/from16 v0, v32

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->scaleX(F)Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;

    .line 778
    move-object/from16 v0, v32

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->scaleY(F)Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;

    .line 779
    move-object/from16 v0, v32

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->translationY(F)Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;

    .line 781
    int-to-long v2, v12

    move-object/from16 v0, v32

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->setDuration(J)Landroid/animation/Animator;

    .line 782
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    move-object/from16 v0, v32

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 784
    if-eqz v21, :cond_1

    .line 785
    new-instance v2, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;

    move-object/from16 v0, v21

    invoke-direct {v2, v0}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;-><init>(Landroid/view/View;)V

    .line 786
    move/from16 v0, v25

    invoke-virtual {v2, v0}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->translationY(F)Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;

    move-result-object v26

    .line 787
    .local v26, "pageIndicatorY":Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;
    int-to-long v2, v12

    move-object/from16 v0, v26

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->setDuration(J)Landroid/animation/Animator;

    .line 788
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 789
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 792
    .end local v26    # "pageIndicatorY":Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;
    :cond_1
    new-instance v2, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;

    invoke-direct {v2, v15}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;-><init>(Landroid/view/View;)V

    .line 793
    move/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->alpha(F)Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;

    move-result-object v16

    .line 794
    .local v16, "hotseatAlpha":Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;
    new-instance v2, Lcom/android/launcher3/home/AlphaUpdateListener;

    invoke-direct {v2, v15, v4}, Lcom/android/launcher3/home/AlphaUpdateListener;-><init>(Landroid/view/View;Z)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 796
    new-instance v2, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;

    invoke-direct {v2, v5}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;-><init>(Landroid/view/View;)V

    .line 797
    move/from16 v0, v19

    invoke-virtual {v2, v0}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->alpha(F)Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;

    move-result-object v18

    .line 798
    .local v18, "overviewPanelAlpha":Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;
    new-instance v2, Lcom/android/launcher3/home/AlphaUpdateListener;

    invoke-direct {v2, v5, v4}, Lcom/android/launcher3/home/AlphaUpdateListener;-><init>(Landroid/view/View;Z)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 801
    new-instance v2, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;

    move-object/from16 v0, v29

    invoke-direct {v2, v0}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;-><init>(Landroid/view/View;)V

    .line 802
    move/from16 v0, v28

    invoke-virtual {v2, v0}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->alpha(F)Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;

    move-result-object v30

    .line 803
    .local v30, "screengridPanelAlpha":Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;
    new-instance v2, Lcom/android/launcher3/home/AlphaUpdateListener;

    move-object/from16 v0, v29

    invoke-direct {v2, v0, v4}, Lcom/android/launcher3/home/AlphaUpdateListener;-><init>(Landroid/view/View;Z)V

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 806
    new-instance v2, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;

    invoke-direct {v2, v7}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;-><init>(Landroid/view/View;)V

    .line 807
    move/from16 v0, v28

    invoke-virtual {v2, v0}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->alpha(F)Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;

    move-result-object v31

    .line 808
    .local v31, "topContainerAlpha":Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;
    new-instance v2, Lcom/android/launcher3/home/AlphaUpdateListener;

    invoke-direct {v2, v7, v4}, Lcom/android/launcher3/home/AlphaUpdateListener;-><init>(Landroid/view/View;Z)V

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 811
    if-eqz p4, :cond_f

    .line 812
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-direct {v2, v3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 813
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-direct {v2, v3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 814
    const/4 v2, 0x0

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 815
    const/4 v2, 0x0

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 824
    :goto_7
    int-to-long v2, v12

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->setDuration(J)Landroid/animation/Animator;

    .line 825
    int-to-long v2, v12

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->setDuration(J)Landroid/animation/Animator;

    .line 826
    int-to-long v2, v12

    move-object/from16 v0, v30

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->setDuration(J)Landroid/animation/Animator;

    .line 827
    int-to-long v2, v12

    move-object/from16 v0, v31

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->setDuration(J)Landroid/animation/Animator;

    .line 829
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 830
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    move-object/from16 v0, v30

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 831
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 832
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    move-object/from16 v0, v31

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 833
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    new-instance v2, Lcom/android/launcher3/home/HomeTransitionAnimation$6;

    move-object/from16 v3, p0

    move/from16 v6, p4

    invoke-direct/range {v2 .. v7}, Lcom/android/launcher3/home/HomeTransitionAnimation$6;-><init>(Lcom/android/launcher3/home/HomeTransitionAnimation;ZLcom/android/launcher3/home/OverviewPanel;ZLandroid/view/View;)V

    invoke-virtual {v8, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .end local v16    # "hotseatAlpha":Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;
    .end local v18    # "overviewPanelAlpha":Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;
    .end local v30    # "screengridPanelAlpha":Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;
    .end local v31    # "topContainerAlpha":Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;
    .end local v32    # "workspaceAnimator":Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;
    :cond_2
    :goto_8
    move-object/from16 v8, p0

    move/from16 v10, p1

    move/from16 v11, p4

    move/from16 v13, p5

    .line 872
    invoke-direct/range {v8 .. v13}, Lcom/android/launcher3/home/HomeTransitionAnimation;->changeScreenGridBackground(Lcom/android/launcher3/home/Workspace;ZZIZ)V

    .line 874
    if-eqz p3, :cond_3

    .line 875
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v2, v1, v4}, Lcom/android/launcher3/home/HomeTransitionAnimation;->animateExitAppsOrWidget(Landroid/animation/AnimatorSet;ZZ)V

    .line 878
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    if-eqz p5, :cond_12

    const/4 v2, 0x1

    :goto_9
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v3, v1, v2, v12}, Lcom/android/launcher3/home/HomeTransitionAnimation;->animateBackgroundDarken(Landroid/animation/AnimatorSet;ZII)V

    .line 880
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    return-object v2

    .line 735
    .end local v14    # "currentPage":I
    .end local v17    # "hotseatAlphaValue":F
    .end local v19    # "overviewPanelAlphaValue":F
    .end local v20    # "pageCount":I
    .end local v22    # "pageIndicatorMarginBottomNormal":I
    .end local v23    # "pageIndicatorMarginBottomOverview":I
    .end local v25    # "pageIndicatorTranslationY":F
    .end local v28    # "screengridAlphaValue":F
    .end local v33    # "workspaceOffsetX":I
    .end local v34    # "workspaceShrinkFactor":F
    .end local v35    # "workspaceTranslationOverviewY":F
    .end local v36    # "workspaceTranslationScreengridY":F
    .end local v37    # "workspaceTranslationY":F
    :cond_4
    if-eqz p5, :cond_5

    const/high16 v34, 0x3f800000    # 1.0f

    goto/16 :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mOverviewShrinkFactor:F

    move/from16 v34, v0

    goto/16 :goto_0

    .line 741
    .restart local v34    # "workspaceShrinkFactor":F
    .restart local v35    # "workspaceTranslationOverviewY":F
    .restart local v36    # "workspaceTranslationScreengridY":F
    :cond_6
    if-eqz p4, :cond_7

    move/from16 v37, v36

    goto/16 :goto_1

    :cond_7
    move/from16 v37, v35

    goto/16 :goto_1

    .line 744
    .restart local v37    # "workspaceTranslationY":F
    :cond_8
    const/16 v17, 0x0

    goto/16 :goto_2

    .line 745
    .restart local v17    # "hotseatAlphaValue":F
    :cond_9
    if-eqz p5, :cond_a

    const/16 v19, 0x0

    goto/16 :goto_3

    :cond_a
    const/high16 v19, 0x3f800000    # 1.0f

    goto/16 :goto_3

    .line 746
    .restart local v19    # "overviewPanelAlphaValue":F
    :cond_b
    const/16 v28, 0x0

    goto/16 :goto_4

    .restart local v14    # "currentPage":I
    .restart local v20    # "pageCount":I
    .restart local v28    # "screengridAlphaValue":F
    :cond_c
    move v2, v14

    .line 749
    goto/16 :goto_5

    .line 758
    .restart local v22    # "pageIndicatorMarginBottomNormal":I
    .restart local v23    # "pageIndicatorMarginBottomOverview":I
    .restart local v24    # "pageIndicatorMarginBottomScreenGrid":I
    .restart local v33    # "workspaceOffsetX":I
    :cond_d
    if-eqz p4, :cond_e

    .end local v24    # "pageIndicatorMarginBottomScreenGrid":I
    :goto_a
    sub-int v2, v22, v24

    int-to-float v0, v2

    move/from16 v25, v0

    goto/16 :goto_6

    .restart local v24    # "pageIndicatorMarginBottomScreenGrid":I
    :cond_e
    move/from16 v24, v23

    goto :goto_a

    .line 818
    .end local v24    # "pageIndicatorMarginBottomScreenGrid":I
    .restart local v16    # "hotseatAlpha":Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;
    .restart local v18    # "overviewPanelAlpha":Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;
    .restart local v25    # "pageIndicatorTranslationY":F
    .restart local v30    # "screengridPanelAlpha":Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;
    .restart local v31    # "topContainerAlpha":Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;
    .restart local v32    # "workspaceAnimator":Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;
    :cond_f
    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 819
    const/4 v2, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 820
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-direct {v2, v3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 821
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-direct {v2, v3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto/16 :goto_7

    .line 849
    .end local v16    # "hotseatAlpha":Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;
    .end local v18    # "overviewPanelAlpha":Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;
    .end local v30    # "screengridPanelAlpha":Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;
    .end local v31    # "topContainerAlpha":Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;
    .end local v32    # "workspaceAnimator":Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;
    :cond_10
    move/from16 v0, v19

    invoke-virtual {v5, v0}, Lcom/android/launcher3/home/OverviewPanel;->setAlpha(F)V

    .line 850
    invoke-static {v5, v4}, Lcom/android/launcher3/home/AlphaUpdateListener;->updateVisibility(Landroid/view/View;Z)V

    .line 851
    move-object/from16 v0, v29

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/ScreenGridPanel;->setAlpha(F)V

    .line 852
    move-object/from16 v0, v29

    invoke-static {v0, v4}, Lcom/android/launcher3/home/AlphaUpdateListener;->updateVisibility(Landroid/view/View;Z)V

    .line 853
    move/from16 v0, v28

    invoke-virtual {v7, v0}, Landroid/view/View;->setAlpha(F)V

    .line 854
    invoke-static {v7, v4}, Lcom/android/launcher3/home/AlphaUpdateListener;->updateVisibility(Landroid/view/View;Z)V

    .line 855
    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/view/View;->setAlpha(F)V

    .line 856
    invoke-static {v15, v4}, Lcom/android/launcher3/home/AlphaUpdateListener;->updateVisibility(Landroid/view/View;Z)V

    .line 858
    move/from16 v0, v37

    invoke-virtual {v9, v0}, Lcom/android/launcher3/home/Workspace;->setTranslationY(F)V

    .line 859
    move/from16 v0, v34

    invoke-virtual {v9, v0}, Lcom/android/launcher3/home/Workspace;->setScaleX(F)V

    .line 860
    move/from16 v0, v34

    invoke-virtual {v9, v0}, Lcom/android/launcher3/home/Workspace;->setScaleY(F)V

    .line 862
    if-eqz v21, :cond_11

    .line 863
    move-object/from16 v0, v21

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/view/PageIndicator;->setTranslationY(F)V

    .line 866
    :cond_11
    if-eqz v4, :cond_2

    invoke-virtual {v5}, Lcom/android/launcher3/home/OverviewPanel;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    .line 867
    const/4 v2, 0x0

    invoke-virtual {v5, v2}, Lcom/android/launcher3/home/OverviewPanel;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x40

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v6}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    goto/16 :goto_8

    .line 878
    :cond_12
    const/4 v2, 0x4

    goto/16 :goto_9
.end method

.method getSelectAnimation(ZLjava/util/HashMap;Z)Landroid/animation/AnimatorSet;
    .locals 11
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
    .line 663
    .local p2, "layerViews":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/view/View;Ljava/lang/Integer;>;"
    sget-object v8, Lcom/android/launcher3/util/Talk;->INSTANCE:Lcom/android/launcher3/util/Talk;

    invoke-virtual {v8}, Lcom/android/launcher3/util/Talk;->isAccessibilityEnabled()Z

    move-result v0

    .line 664
    .local v0, "accessibilityEnabled":Z
    iget-object v8, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v8}, Lcom/android/launcher3/Launcher;->getMultiSelectManager()Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->getMultiSelectPanel()Lcom/android/launcher3/common/multiselect/MultiSelectPanel;

    move-result-object v4

    .line 665
    .local v4, "multiSelectPanel":Lcom/android/launcher3/common/multiselect/MultiSelectPanel;
    const/4 v8, 0x6

    invoke-direct {p0, v8}, Lcom/android/launcher3/home/HomeTransitionAnimation;->getStateAnimationDuration(I)I

    move-result v3

    .line 666
    .local v3, "duration":I
    if-eqz p3, :cond_1

    const/high16 v1, 0x3f800000    # 1.0f

    .line 667
    .local v1, "alpha":F
    :goto_0
    if-eqz p3, :cond_2

    const/high16 v5, 0x3f800000    # 1.0f

    .line 669
    .local v5, "scale":F
    :goto_1
    invoke-direct {p0}, Lcom/android/launcher3/home/HomeTransitionAnimation;->cancelStateAnimation()V

    .line 670
    if-eqz p1, :cond_3

    .line 671
    invoke-static {}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v8

    iput-object v8, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    .line 672
    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p2, v4, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 674
    sget-object v8, Landroid/view/View;->ALPHA:Landroid/util/Property;

    .line 675
    invoke-virtual {v8}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [F

    const/4 v10, 0x0

    aput v1, v9, v10

    .line 674
    invoke-static {v4, v8, v9}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 676
    .local v2, "alphaAnim":Landroid/animation/Animator;
    int-to-long v8, v3

    invoke-virtual {v2, v8, v9}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 677
    iget-object v8, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mSineInOut33:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v8}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 679
    sget-object v8, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    .line 680
    invoke-virtual {v8}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [F

    const/4 v10, 0x0

    aput v5, v9, v10

    .line 679
    invoke-static {v4, v8, v9}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 681
    .local v6, "scaleXAnim":Landroid/animation/Animator;
    int-to-long v8, v3

    invoke-virtual {v6, v8, v9}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 682
    iget-object v8, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mSineInOut80:Landroid/view/animation/Interpolator;

    invoke-virtual {v6, v8}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 684
    sget-object v8, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    .line 685
    invoke-virtual {v8}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [F

    const/4 v10, 0x0

    aput v5, v9, v10

    .line 684
    invoke-static {v4, v8, v9}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 686
    .local v7, "scaleYAnim":Landroid/animation/Animator;
    int-to-long v8, v3

    invoke-virtual {v7, v8, v9}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 687
    iget-object v8, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mSineInOut80:Landroid/view/animation/Interpolator;

    invoke-virtual {v7, v8}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 689
    iget-object v8, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    const/4 v9, 0x3

    new-array v9, v9, [Landroid/animation/Animator;

    const/4 v10, 0x0

    aput-object v2, v9, v10

    const/4 v10, 0x1

    aput-object v6, v9, v10

    const/4 v10, 0x2

    aput-object v7, v9, v10

    invoke-virtual {v8, v9}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 690
    iget-object v8, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    new-instance v9, Lcom/android/launcher3/home/HomeTransitionAnimation$5;

    invoke-direct {v9, p0, p3, v4}, Lcom/android/launcher3/home/HomeTransitionAnimation$5;-><init>(Lcom/android/launcher3/home/HomeTransitionAnimation;ZLcom/android/launcher3/common/multiselect/MultiSelectPanel;)V

    invoke-virtual {v8, v9}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 714
    .end local v2    # "alphaAnim":Landroid/animation/Animator;
    .end local v6    # "scaleXAnim":Landroid/animation/Animator;
    .end local v7    # "scaleYAnim":Landroid/animation/Animator;
    :goto_2
    iget-object v8, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v8}, Lcom/android/launcher3/Launcher;->isHomeStage()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 715
    iget-object v8, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    invoke-direct {p0, v8, p1, v0}, Lcom/android/launcher3/home/HomeTransitionAnimation;->animateExitAppsOrWidget(Landroid/animation/AnimatorSet;ZZ)V

    .line 718
    :cond_0
    iget-object v8, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    return-object v8

    .line 666
    .end local v1    # "alpha":F
    .end local v5    # "scale":F
    :cond_1
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 667
    .restart local v1    # "alpha":F
    :cond_2
    const v5, 0x3f733333    # 0.95f

    goto/16 :goto_1

    .line 708
    .restart local v5    # "scale":F
    :cond_3
    invoke-virtual {v4, v5}, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->setScaleX(F)V

    .line 709
    invoke-virtual {v4, v5}, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->setScaleY(F)V

    .line 710
    invoke-virtual {v4, v1}, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->setAlpha(F)V

    .line 711
    if-eqz p3, :cond_4

    const/4 v8, 0x0

    :goto_3
    invoke-virtual {v4, v8}, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->setVisibility(I)V

    goto :goto_2

    :cond_4
    const/16 v8, 0x8

    goto :goto_3
.end method

.method getTrayReturnAnimation(ZZ)Landroid/animation/Animator;
    .locals 7
    .param p1, "animated"    # Z
    .param p2, "isHomeStage"    # Z

    .prologue
    .line 884
    invoke-direct {p0}, Lcom/android/launcher3/home/HomeTransitionAnimation;->cancelStageAnimation()V

    .line 885
    if-eqz p1, :cond_0

    .line 886
    invoke-static {}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    .line 887
    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/launcher3/home/HomeTransitionAnimation;->getStageAnimationDuration(II)I

    move-result v1

    div-int/lit8 v0, v1, 0x2

    .line 888
    .local v0, "duration":I
    iget-object v2, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    int-to-long v4, v0

    const/4 v6, 0x0

    move-object v1, p0

    move v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/launcher3/home/HomeTransitionAnimation;->animateSwipeHometray(Landroid/animation/AnimatorSet;ZJZ)V

    .line 893
    .end local v0    # "duration":I
    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    return-object v1

    .line 890
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0
.end method

.method isRunningOverviewAnimation()Z
    .locals 1

    .prologue
    .line 901
    iget-boolean v0, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mIsRunningOverviewAnimation:Z

    return v0
.end method

.method isRunningSwipeAnimation()Z
    .locals 1

    .prologue
    .line 897
    iget-boolean v0, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mIsRunningSwipeAnimation:Z

    return v0
.end method

.method onConfigurationChangedIfNeeded()V
    .locals 0

    .prologue
    .line 1234
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeTransitionAnimation;->setupShrinkFactor()V

    .line 1235
    return-void
.end method

.method setupShrinkFactor()V
    .locals 3

    .prologue
    const/high16 v2, 0x42c80000    # 100.0f

    .line 163
    iget-object v0, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0003

    .line 164
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    iput v0, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mOverviewShrinkFactor:F

    .line 165
    iget-object v0, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b000b

    .line 166
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    iput v0, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mScreenGridShrinkFactor:F

    .line 167
    return-void
.end method

.method setupView()V
    .locals 2

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    const v1, 0x7f0f0098

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    .line 171
    return-void
.end method
