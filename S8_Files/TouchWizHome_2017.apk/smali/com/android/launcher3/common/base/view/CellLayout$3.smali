.class Lcom/android/launcher3/common/base/view/CellLayout$3;
.super Ljava/lang/Object;
.source "CellLayout.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/common/base/view/CellLayout;->createFolderVI(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/common/base/view/CellLayout;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/launcher3/common/base/view/CellLayout;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/common/base/view/CellLayout;

    .prologue
    .line 411
    iput-object p1, p0, Lcom/android/launcher3/common/base/view/CellLayout$3;->this$0:Lcom/android/launcher3/common/base/view/CellLayout;

    iput-object p2, p0, Lcom/android/launcher3/common/base/view/CellLayout$3;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 423
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/CellLayout$3;->this$0:Lcom/android/launcher3/common/base/view/CellLayout;

    iget-object v0, v0, Lcom/android/launcher3/common/base/view/CellLayout;->mChildren:Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    iget-object v1, p0, Lcom/android/launcher3/common/base/view/CellLayout$3;->val$view:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->removeView(Landroid/view/View;)V

    .line 424
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 418
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/CellLayout$3;->this$0:Lcom/android/launcher3/common/base/view/CellLayout;

    iget-object v0, v0, Lcom/android/launcher3/common/base/view/CellLayout;->mChildren:Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    iget-object v1, p0, Lcom/android/launcher3/common/base/view/CellLayout$3;->val$view:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->removeView(Landroid/view/View;)V

    .line 419
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 429
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 414
    return-void
.end method
