.class Lcom/android/launcher3/home/HomeTransitionAnimation$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "HomeTransitionAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/home/HomeTransitionAnimation;->getOverviewAnimation(ZLjava/util/HashMap;ZZ)Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/home/HomeTransitionAnimation;

.field final synthetic val$accessibilityEnabled:Z

.field final synthetic val$overviewPanel:Lcom/android/launcher3/home/OverviewPanel;


# direct methods
.method constructor <init>(Lcom/android/launcher3/home/HomeTransitionAnimation;ZLcom/android/launcher3/home/OverviewPanel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/home/HomeTransitionAnimation;

    .prologue
    .line 518
    iput-object p1, p0, Lcom/android/launcher3/home/HomeTransitionAnimation$3;->this$0:Lcom/android/launcher3/home/HomeTransitionAnimation;

    iput-boolean p2, p0, Lcom/android/launcher3/home/HomeTransitionAnimation$3;->val$accessibilityEnabled:Z

    iput-object p3, p0, Lcom/android/launcher3/home/HomeTransitionAnimation$3;->val$overviewPanel:Lcom/android/launcher3/home/OverviewPanel;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 537
    invoke-virtual {p0, p1}, Lcom/android/launcher3/home/HomeTransitionAnimation$3;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 538
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 526
    iget-object v0, p0, Lcom/android/launcher3/home/HomeTransitionAnimation$3;->this$0:Lcom/android/launcher3/home/HomeTransitionAnimation;

    # setter for: Lcom/android/launcher3/home/HomeTransitionAnimation;->mIsRunningOverviewAnimation:Z
    invoke-static {v0, v1}, Lcom/android/launcher3/home/HomeTransitionAnimation;->access$202(Lcom/android/launcher3/home/HomeTransitionAnimation;Z)Z

    .line 527
    iget-object v0, p0, Lcom/android/launcher3/home/HomeTransitionAnimation$3;->this$0:Lcom/android/launcher3/home/HomeTransitionAnimation;

    # setter for: Lcom/android/launcher3/home/HomeTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;
    invoke-static {v0, v2}, Lcom/android/launcher3/home/HomeTransitionAnimation;->access$302(Lcom/android/launcher3/home/HomeTransitionAnimation;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 529
    iget-boolean v0, p0, Lcom/android/launcher3/home/HomeTransitionAnimation$3;->val$accessibilityEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/HomeTransitionAnimation$3;->val$overviewPanel:Lcom/android/launcher3/home/OverviewPanel;

    invoke-virtual {v0}, Lcom/android/launcher3/home/OverviewPanel;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 530
    iget-object v0, p0, Lcom/android/launcher3/home/HomeTransitionAnimation$3;->val$overviewPanel:Lcom/android/launcher3/home/OverviewPanel;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/OverviewPanel;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x40

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    .line 533
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 521
    iget-object v0, p0, Lcom/android/launcher3/home/HomeTransitionAnimation$3;->this$0:Lcom/android/launcher3/home/HomeTransitionAnimation;

    const/4 v1, 0x1

    # setter for: Lcom/android/launcher3/home/HomeTransitionAnimation;->mIsRunningOverviewAnimation:Z
    invoke-static {v0, v1}, Lcom/android/launcher3/home/HomeTransitionAnimation;->access$202(Lcom/android/launcher3/home/HomeTransitionAnimation;Z)Z

    .line 522
    return-void
.end method
