.class Lcom/android/launcher3/allapps/AppsTransitionAnimation$9;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AppsTransitionAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/allapps/AppsTransitionAnimation;->getDragAnimation(ZLjava/util/HashMap;ZZ)Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/allapps/AppsTransitionAnimation;

.field final synthetic val$enter:Z

.field final synthetic val$searchBarAlphaValue:F

.field final synthetic val$topLayout:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/launcher3/allapps/AppsTransitionAnimation;Landroid/view/View;ZF)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/allapps/AppsTransitionAnimation;

    .prologue
    .line 777
    iput-object p1, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation$9;->this$0:Lcom/android/launcher3/allapps/AppsTransitionAnimation;

    iput-object p2, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation$9;->val$topLayout:Landroid/view/View;

    iput-boolean p3, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation$9;->val$enter:Z

    iput p4, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation$9;->val$searchBarAlphaValue:F

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 786
    iget-object v0, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation$9;->val$topLayout:Landroid/view/View;

    iget v1, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation$9;->val$searchBarAlphaValue:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 787
    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/AppsTransitionAnimation$9;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 788
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 780
    iget-object v0, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation$9;->this$0:Lcom/android/launcher3/allapps/AppsTransitionAnimation;

    const/4 v1, 0x0

    # setter for: Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;
    invoke-static {v0, v1}, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->access$302(Lcom/android/launcher3/allapps/AppsTransitionAnimation;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 781
    iget-object v1, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation$9;->val$topLayout:Landroid/view/View;

    iget-boolean v0, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation$9;->val$enter:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 782
    return-void

    .line 781
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method