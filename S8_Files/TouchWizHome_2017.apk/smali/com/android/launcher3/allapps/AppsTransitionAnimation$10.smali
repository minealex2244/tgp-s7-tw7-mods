.class Lcom/android/launcher3/allapps/AppsTransitionAnimation$10;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AppsTransitionAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/allapps/AppsTransitionAnimation;->getSelectAnimation(ZLjava/util/HashMap;Z)Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/allapps/AppsTransitionAnimation;

.field final synthetic val$enter:Z

.field final synthetic val$multiSelectPanel:Lcom/android/launcher3/common/multiselect/MultiSelectPanel;


# direct methods
.method constructor <init>(Lcom/android/launcher3/allapps/AppsTransitionAnimation;ZLcom/android/launcher3/common/multiselect/MultiSelectPanel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/allapps/AppsTransitionAnimation;

    .prologue
    .line 846
    iput-object p1, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation$10;->this$0:Lcom/android/launcher3/allapps/AppsTransitionAnimation;

    iput-boolean p2, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation$10;->val$enter:Z

    iput-object p3, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation$10;->val$multiSelectPanel:Lcom/android/launcher3/common/multiselect/MultiSelectPanel;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 857
    iget-object v0, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation$10;->this$0:Lcom/android/launcher3/allapps/AppsTransitionAnimation;

    const/4 v1, 0x0

    # setter for: Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;
    invoke-static {v0, v1}, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->access$302(Lcom/android/launcher3/allapps/AppsTransitionAnimation;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 858
    iget-boolean v0, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation$10;->val$enter:Z

    if-nez v0, :cond_0

    .line 859
    iget-object v0, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation$10;->val$multiSelectPanel:Lcom/android/launcher3/common/multiselect/MultiSelectPanel;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->setVisibility(I)V

    .line 863
    :goto_0
    return-void

    .line 861
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation$10;->val$multiSelectPanel:Lcom/android/launcher3/common/multiselect/MultiSelectPanel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->setVisibility(I)V

    goto :goto_0
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 849
    iget-boolean v0, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation$10;->val$enter:Z

    if-eqz v0, :cond_0

    .line 850
    iget-object v0, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation$10;->val$multiSelectPanel:Lcom/android/launcher3/common/multiselect/MultiSelectPanel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->setVisibility(I)V

    .line 851
    iget-object v0, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation$10;->val$multiSelectPanel:Lcom/android/launcher3/common/multiselect/MultiSelectPanel;

    invoke-virtual {v0}, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->bringToFront()V

    .line 853
    :cond_0
    return-void
.end method
