.class Lcom/android/launcher3/home/HomeTransitionAnimation$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "HomeTransitionAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/home/HomeTransitionAnimation;->getScreenGridAnimation(ZLjava/util/HashMap;ZZZ)Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/home/HomeTransitionAnimation;

.field final synthetic val$accessibilityEnabled:Z

.field final synthetic val$enter:Z

.field final synthetic val$overviewPanel:Lcom/android/launcher3/home/OverviewPanel;

.field final synthetic val$screenGridTopContainer:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/launcher3/home/HomeTransitionAnimation;ZLcom/android/launcher3/home/OverviewPanel;ZLandroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/home/HomeTransitionAnimation;

    .prologue
    .line 833
    iput-object p1, p0, Lcom/android/launcher3/home/HomeTransitionAnimation$6;->this$0:Lcom/android/launcher3/home/HomeTransitionAnimation;

    iput-boolean p2, p0, Lcom/android/launcher3/home/HomeTransitionAnimation$6;->val$accessibilityEnabled:Z

    iput-object p3, p0, Lcom/android/launcher3/home/HomeTransitionAnimation$6;->val$overviewPanel:Lcom/android/launcher3/home/OverviewPanel;

    iput-boolean p4, p0, Lcom/android/launcher3/home/HomeTransitionAnimation$6;->val$enter:Z

    iput-object p5, p0, Lcom/android/launcher3/home/HomeTransitionAnimation$6;->val$screenGridTopContainer:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v2, 0x0

    .line 836
    iget-object v0, p0, Lcom/android/launcher3/home/HomeTransitionAnimation$6;->this$0:Lcom/android/launcher3/home/HomeTransitionAnimation;

    # setter for: Lcom/android/launcher3/home/HomeTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;
    invoke-static {v0, v2}, Lcom/android/launcher3/home/HomeTransitionAnimation;->access$302(Lcom/android/launcher3/home/HomeTransitionAnimation;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 838
    iget-boolean v0, p0, Lcom/android/launcher3/home/HomeTransitionAnimation$6;->val$accessibilityEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/HomeTransitionAnimation$6;->val$overviewPanel:Lcom/android/launcher3/home/OverviewPanel;

    invoke-virtual {v0}, Lcom/android/launcher3/home/OverviewPanel;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 839
    iget-object v0, p0, Lcom/android/launcher3/home/HomeTransitionAnimation$6;->val$overviewPanel:Lcom/android/launcher3/home/OverviewPanel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/OverviewPanel;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x40

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    .line 843
    :cond_0
    iget-boolean v0, p0, Lcom/android/launcher3/home/HomeTransitionAnimation$6;->val$enter:Z

    if-nez v0, :cond_1

    .line 844
    iget-object v0, p0, Lcom/android/launcher3/home/HomeTransitionAnimation$6;->val$screenGridTopContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 846
    :cond_1
    return-void
.end method
