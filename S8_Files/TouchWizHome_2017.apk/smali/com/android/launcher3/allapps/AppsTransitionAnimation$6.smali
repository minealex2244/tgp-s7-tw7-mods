.class Lcom/android/launcher3/allapps/AppsTransitionAnimation$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AppsTransitionAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/allapps/AppsTransitionAnimation;->getTidyUpAnimation(ZLjava/util/HashMap;ZLcom/android/launcher3/common/stage/StageEntry;)Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/allapps/AppsTransitionAnimation;

.field final synthetic val$enter:Z

.field final synthetic val$tidyUpContainerView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/launcher3/allapps/AppsTransitionAnimation;ZLandroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/allapps/AppsTransitionAnimation;

    .prologue
    .line 625
    iput-object p1, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation$6;->this$0:Lcom/android/launcher3/allapps/AppsTransitionAnimation;

    iput-boolean p2, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation$6;->val$enter:Z

    iput-object p3, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation$6;->val$tidyUpContainerView:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 635
    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/AppsTransitionAnimation$6;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 636
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 628
    iget-boolean v0, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation$6;->val$enter:Z

    if-eqz v0, :cond_0

    .line 629
    iget-object v0, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation$6;->val$tidyUpContainerView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 631
    :cond_0
    return-void
.end method
