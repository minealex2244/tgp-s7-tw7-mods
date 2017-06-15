.class Lcom/android/launcher3/common/base/view/PagedView$7;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PagedView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/common/base/view/PagedView;->animatePullingPages()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/common/base/view/PagedView;


# direct methods
.method constructor <init>(Lcom/android/launcher3/common/base/view/PagedView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/common/base/view/PagedView;

    .prologue
    .line 2791
    iput-object p1, p0, Lcom/android/launcher3/common/base/view/PagedView$7;->this$0:Lcom/android/launcher3/common/base/view/PagedView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v3, -0x1

    .line 2794
    const-string v0, "PagedView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "End of page pulling anim. State is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/common/base/view/PagedView$7;->this$0:Lcom/android/launcher3/common/base/view/PagedView;

    # getter for: Lcom/android/launcher3/common/base/view/PagedView;->mScrollState:I
    invoke-static {v2}, Lcom/android/launcher3/common/base/view/PagedView;->access$500(Lcom/android/launcher3/common/base/view/PagedView;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2795
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView$7;->this$0:Lcom/android/launcher3/common/base/view/PagedView;

    # getter for: Lcom/android/launcher3/common/base/view/PagedView;->mScrollState:I
    invoke-static {v0}, Lcom/android/launcher3/common/base/view/PagedView;->access$500(Lcom/android/launcher3/common/base/view/PagedView;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 2796
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView$7;->this$0:Lcom/android/launcher3/common/base/view/PagedView;

    const/4 v1, 0x0

    # setter for: Lcom/android/launcher3/common/base/view/PagedView;->mTranslateAllPages:F
    invoke-static {v0, v1}, Lcom/android/launcher3/common/base/view/PagedView;->access$602(Lcom/android/launcher3/common/base/view/PagedView;F)F

    .line 2797
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView$7;->this$0:Lcom/android/launcher3/common/base/view/PagedView;

    # setter for: Lcom/android/launcher3/common/base/view/PagedView;->mScrollState:I
    invoke-static {v0, v3}, Lcom/android/launcher3/common/base/view/PagedView;->access$502(Lcom/android/launcher3/common/base/view/PagedView;I)I

    .line 2805
    :goto_0
    return-void

    .line 2798
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView$7;->this$0:Lcom/android/launcher3/common/base/view/PagedView;

    # getter for: Lcom/android/launcher3/common/base/view/PagedView;->mScrollState:I
    invoke-static {v0}, Lcom/android/launcher3/common/base/view/PagedView;->access$500(Lcom/android/launcher3/common/base/view/PagedView;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 2799
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView$7;->this$0:Lcom/android/launcher3/common/base/view/PagedView;

    const/4 v1, 0x4

    # setter for: Lcom/android/launcher3/common/base/view/PagedView;->mScrollState:I
    invoke-static {v0, v1}, Lcom/android/launcher3/common/base/view/PagedView;->access$502(Lcom/android/launcher3/common/base/view/PagedView;I)I

    .line 2800
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView$7;->this$0:Lcom/android/launcher3/common/base/view/PagedView;

    const/4 v1, 0x1

    # setter for: Lcom/android/launcher3/common/base/view/PagedView;->mContinuallyScroll:Z
    invoke-static {v0, v1}, Lcom/android/launcher3/common/base/view/PagedView;->access$702(Lcom/android/launcher3/common/base/view/PagedView;Z)Z

    goto :goto_0

    .line 2802
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView$7;->this$0:Lcom/android/launcher3/common/base/view/PagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/PagedView;->resetPulledPages()V

    .line 2803
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView$7;->this$0:Lcom/android/launcher3/common/base/view/PagedView;

    # setter for: Lcom/android/launcher3/common/base/view/PagedView;->mScrollState:I
    invoke-static {v0, v3}, Lcom/android/launcher3/common/base/view/PagedView;->access$502(Lcom/android/launcher3/common/base/view/PagedView;I)I

    goto :goto_0
.end method
