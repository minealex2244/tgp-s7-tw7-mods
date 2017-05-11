.class Lcom/android/launcher3/common/quickoption/QuickOptionView$3;
.super Ljava/lang/Object;
.source "QuickOptionView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/common/quickoption/QuickOptionView;->hideAnimation(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/common/quickoption/QuickOptionView;

.field final synthetic val$removeCallback:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/launcher3/common/quickoption/QuickOptionView;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/common/quickoption/QuickOptionView;

    .prologue
    .line 260
    iput-object p1, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView$3;->this$0:Lcom/android/launcher3/common/quickoption/QuickOptionView;

    iput-object p2, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView$3;->val$removeCallback:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    const v1, 0x3e4ccccd    # 0.2f

    .line 280
    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView$3;->this$0:Lcom/android/launcher3/common/quickoption/QuickOptionView;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/quickoption/QuickOptionView;->setScaleX(F)V

    .line 281
    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView$3;->this$0:Lcom/android/launcher3/common/quickoption/QuickOptionView;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/quickoption/QuickOptionView;->setScaleY(F)V

    .line 282
    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView$3;->this$0:Lcom/android/launcher3/common/quickoption/QuickOptionView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/quickoption/QuickOptionView;->setAlpha(F)V

    .line 283
    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView$3;->this$0:Lcom/android/launcher3/common/quickoption/QuickOptionView;

    const/4 v1, 0x0

    # setter for: Lcom/android/launcher3/common/quickoption/QuickOptionView;->mHideAnim:Landroid/animation/AnimatorSet;
    invoke-static {v0, v1}, Lcom/android/launcher3/common/quickoption/QuickOptionView;->access$502(Lcom/android/launcher3/common/quickoption/QuickOptionView;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 284
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 264
    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView$3;->this$0:Lcom/android/launcher3/common/quickoption/QuickOptionView;

    new-instance v1, Lcom/android/launcher3/common/quickoption/QuickOptionView$3$1;

    invoke-direct {v1, p0}, Lcom/android/launcher3/common/quickoption/QuickOptionView$3$1;-><init>(Lcom/android/launcher3/common/quickoption/QuickOptionView$3;)V

    const-wide/16 v2, 0xa7

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher3/common/quickoption/QuickOptionView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 276
    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView$3;->this$0:Lcom/android/launcher3/common/quickoption/QuickOptionView;

    const/4 v1, 0x0

    # setter for: Lcom/android/launcher3/common/quickoption/QuickOptionView;->mHideAnim:Landroid/animation/AnimatorSet;
    invoke-static {v0, v1}, Lcom/android/launcher3/common/quickoption/QuickOptionView;->access$502(Lcom/android/launcher3/common/quickoption/QuickOptionView;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 277
    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView$3;->val$removeCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 278
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 262
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 261
    return-void
.end method
