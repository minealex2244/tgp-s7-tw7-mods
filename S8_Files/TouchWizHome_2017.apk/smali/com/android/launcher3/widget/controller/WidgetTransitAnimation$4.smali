.class Lcom/android/launcher3/widget/controller/WidgetTransitAnimation$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "WidgetTransitAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;->getExitWidgetAnimToHome(Landroid/animation/AnimatorSet;J)V
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
    .line 238
    iput-object p1, p0, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation$4;->this$0:Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method private animationComplete()V
    .locals 3

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 257
    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation$4;->this$0:Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;

    # getter for: Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;->mWidgetView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;->access$000(Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation$4;->this$0:Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;

    # getter for: Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;->mWidgetView:Landroid/view/View;
    invoke-static {v1}, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;->access$000(Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    .line 258
    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation$4;->this$0:Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;

    # getter for: Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;->mWidgetView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;->access$000(Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation$4;->this$0:Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;

    # getter for: Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;->mWidgetView:Landroid/view/View;
    invoke-static {v1}, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;->access$000(Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    .line 259
    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation$4;->this$0:Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;

    # getter for: Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;->mWidgetView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;->access$000(Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 260
    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation$4;->this$0:Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;

    const/4 v1, 0x0

    # setter for: Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;
    invoke-static {v0, v1}, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;->access$102(Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 261
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 253
    invoke-direct {p0}, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation$4;->animationComplete()V

    .line 254
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 248
    invoke-direct {p0}, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation$4;->animationComplete()V

    .line 249
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 242
    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation$4;->this$0:Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;

    # getter for: Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;->mWidgetView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;->access$000(Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation$4;->this$0:Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;

    # getter for: Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;->mWidgetView:Landroid/view/View;
    invoke-static {v1}, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;->access$000(Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    .line 243
    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation$4;->this$0:Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;

    # getter for: Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;->mWidgetView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;->access$000(Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation$4;->this$0:Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;

    # getter for: Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;->mWidgetView:Landroid/view/View;
    invoke-static {v1}, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;->access$000(Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    .line 244
    return-void
.end method
