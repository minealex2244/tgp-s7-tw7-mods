.class Lcom/android/launcher3/allapps/AppsTransitionAnimation$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AppsTransitionAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/allapps/AppsTransitionAnimation;->getEnterFromFolderAnimation(ZLcom/android/launcher3/common/stage/StageEntry;Ljava/util/HashMap;Landroid/view/View;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/allapps/AppsTransitionAnimation;


# direct methods
.method constructor <init>(Lcom/android/launcher3/allapps/AppsTransitionAnimation;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/allapps/AppsTransitionAnimation;

    .prologue
    .line 195
    iput-object p1, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation$1;->this$0:Lcom/android/launcher3/allapps/AppsTransitionAnimation;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method private animationComplete()V
    .locals 3

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    const/high16 v1, 0x3f800000    # 1.0f

    .line 212
    iget-object v0, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation$1;->this$0:Lcom/android/launcher3/allapps/AppsTransitionAnimation;

    # getter for: Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsContentView:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->access$000(Lcom/android/launcher3/allapps/AppsTransitionAnimation;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setScaleX(F)V

    .line 213
    iget-object v0, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation$1;->this$0:Lcom/android/launcher3/allapps/AppsTransitionAnimation;

    # getter for: Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsContentView:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->access$000(Lcom/android/launcher3/allapps/AppsTransitionAnimation;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setScaleY(F)V

    .line 214
    iget-object v0, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation$1;->this$0:Lcom/android/launcher3/allapps/AppsTransitionAnimation;

    # getter for: Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsContentView:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->access$000(Lcom/android/launcher3/allapps/AppsTransitionAnimation;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 215
    iget-object v0, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation$1;->this$0:Lcom/android/launcher3/allapps/AppsTransitionAnimation;

    # getter for: Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsContentView:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->access$000(Lcom/android/launcher3/allapps/AppsTransitionAnimation;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation$1;->this$0:Lcom/android/launcher3/allapps/AppsTransitionAnimation;

    # getter for: Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsContentView:Landroid/view/ViewGroup;
    invoke-static {v1}, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->access$000(Lcom/android/launcher3/allapps/AppsTransitionAnimation;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setPivotX(F)V

    .line 216
    iget-object v0, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation$1;->this$0:Lcom/android/launcher3/allapps/AppsTransitionAnimation;

    # getter for: Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsContentView:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->access$000(Lcom/android/launcher3/allapps/AppsTransitionAnimation;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation$1;->this$0:Lcom/android/launcher3/allapps/AppsTransitionAnimation;

    # getter for: Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsContentView:Landroid/view/ViewGroup;
    invoke-static {v1}, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->access$000(Lcom/android/launcher3/allapps/AppsTransitionAnimation;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setPivotY(F)V

    .line 217
    iget-object v0, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation$1;->this$0:Lcom/android/launcher3/allapps/AppsTransitionAnimation;

    const/4 v1, 0x0

    # setter for: Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;
    invoke-static {v0, v1}, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->access$102(Lcom/android/launcher3/allapps/AppsTransitionAnimation;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 218
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 208
    invoke-direct {p0}, Lcom/android/launcher3/allapps/AppsTransitionAnimation$1;->animationComplete()V

    .line 209
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 203
    invoke-direct {p0}, Lcom/android/launcher3/allapps/AppsTransitionAnimation$1;->animationComplete()V

    .line 204
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 198
    iget-object v0, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation$1;->this$0:Lcom/android/launcher3/allapps/AppsTransitionAnimation;

    # getter for: Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsContentView:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->access$000(Lcom/android/launcher3/allapps/AppsTransitionAnimation;)Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 199
    return-void
.end method
