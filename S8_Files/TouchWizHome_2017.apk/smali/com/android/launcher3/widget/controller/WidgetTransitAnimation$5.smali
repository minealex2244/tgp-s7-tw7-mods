.class Lcom/android/launcher3/widget/controller/WidgetTransitAnimation$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "WidgetTransitAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;->getEnterWidgetDefaultAnim(Landroid/animation/AnimatorSet;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;


# direct methods
.method constructor <init>(Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;

    .prologue
    .line 273
    iput-object p1, p0, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation$5;->this$0:Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method private animationComplete()V
    .locals 2

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 285
    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation$5;->this$0:Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;

    # getter for: Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;->mWidgetView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;->access$000(Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 286
    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation$5;->this$0:Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;

    # getter for: Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;->mWidgetView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;->access$000(Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 287
    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation$5;->this$0:Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;

    # getter for: Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;->mWidgetView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;->access$000(Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 288
    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation$5;->this$0:Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;

    const/4 v1, 0x0

    # setter for: Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;
    invoke-static {v0, v1}, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;->access$102(Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 289
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 281
    invoke-direct {p0}, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation$5;->animationComplete()V

    .line 282
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 276
    invoke-direct {p0}, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation$5;->animationComplete()V

    .line 277
    return-void
.end method
