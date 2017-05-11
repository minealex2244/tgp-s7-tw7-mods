.class Lcom/android/launcher3/common/quickoption/QuickOptionView$1;
.super Ljava/lang/Object;
.source "QuickOptionView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/common/quickoption/QuickOptionView;->showAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/common/quickoption/QuickOptionView;


# direct methods
.method constructor <init>(Lcom/android/launcher3/common/quickoption/QuickOptionView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/common/quickoption/QuickOptionView;

    .prologue
    .line 222
    iput-object p1, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView$1;->this$0:Lcom/android/launcher3/common/quickoption/QuickOptionView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 234
    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView$1;->this$0:Lcom/android/launcher3/common/quickoption/QuickOptionView;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/quickoption/QuickOptionView;->setScaleX(F)V

    .line 235
    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView$1;->this$0:Lcom/android/launcher3/common/quickoption/QuickOptionView;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/quickoption/QuickOptionView;->setScaleY(F)V

    .line 236
    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView$1;->this$0:Lcom/android/launcher3/common/quickoption/QuickOptionView;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/quickoption/QuickOptionView;->setAlpha(F)V

    .line 237
    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView$1;->this$0:Lcom/android/launcher3/common/quickoption/QuickOptionView;

    const/4 v1, 0x0

    # setter for: Lcom/android/launcher3/common/quickoption/QuickOptionView;->mShowAnim:Landroid/animation/AnimatorSet;
    invoke-static {v0, v1}, Lcom/android/launcher3/common/quickoption/QuickOptionView;->access$002(Lcom/android/launcher3/common/quickoption/QuickOptionView;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 238
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    const/4 v2, 0x0

    .line 226
    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView$1;->this$0:Lcom/android/launcher3/common/quickoption/QuickOptionView;

    const/4 v1, 0x0

    # setter for: Lcom/android/launcher3/common/quickoption/QuickOptionView;->mShowAnim:Landroid/animation/AnimatorSet;
    invoke-static {v0, v1}, Lcom/android/launcher3/common/quickoption/QuickOptionView;->access$002(Lcom/android/launcher3/common/quickoption/QuickOptionView;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 227
    sget-object v0, Lcom/android/launcher3/util/Talk;->INSTANCE:Lcom/android/launcher3/util/Talk;

    invoke-virtual {v0}, Lcom/android/launcher3/util/Talk;->isAccessibilityEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView$1;->this$0:Lcom/android/launcher3/common/quickoption/QuickOptionView;

    # getter for: Lcom/android/launcher3/common/quickoption/QuickOptionView;->mQuickOptionListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/android/launcher3/common/quickoption/QuickOptionView;->access$100(Lcom/android/launcher3/common/quickoption/QuickOptionView;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView$1;->this$0:Lcom/android/launcher3/common/quickoption/QuickOptionView;

    # getter for: Lcom/android/launcher3/common/quickoption/QuickOptionView;->mQuickOptionListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/android/launcher3/common/quickoption/QuickOptionView;->access$100(Lcom/android/launcher3/common/quickoption/QuickOptionView;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->semClearAccessibilityFocus()V

    .line 229
    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView$1;->this$0:Lcom/android/launcher3/common/quickoption/QuickOptionView;

    # getter for: Lcom/android/launcher3/common/quickoption/QuickOptionView;->mQuickOptionListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/android/launcher3/common/quickoption/QuickOptionView;->access$100(Lcom/android/launcher3/common/quickoption/QuickOptionView;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->semRequestAccessibilityFocus()Z

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView$1;->this$0:Lcom/android/launcher3/common/quickoption/QuickOptionView;

    const/4 v1, 0x1

    # setter for: Lcom/android/launcher3/common/quickoption/QuickOptionView;->mHasDrawn:Z
    invoke-static {v0, v1}, Lcom/android/launcher3/common/quickoption/QuickOptionView;->access$202(Lcom/android/launcher3/common/quickoption/QuickOptionView;Z)Z

    .line 232
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 224
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 223
    return-void
.end method
