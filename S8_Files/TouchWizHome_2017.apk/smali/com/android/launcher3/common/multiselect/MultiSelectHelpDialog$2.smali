.class Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "MultiSelectHelpDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->animateDialog(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;

.field final synthetic val$show:Z


# direct methods
.method constructor <init>(Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;

    .prologue
    .line 264
    iput-object p1, p0, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog$2;->this$0:Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;

    iput-boolean p2, p0, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog$2;->val$show:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 283
    iget-boolean v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog$2;->val$show:Z

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog$2;->this$0:Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->setScaleX(F)V

    .line 285
    iget-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog$2;->this$0:Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->setScaleY(F)V

    .line 286
    iget-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog$2;->this$0:Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->setAlpha(F)V

    .line 288
    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 275
    iget-boolean v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog$2;->val$show:Z

    if-nez v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog$2;->this$0:Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->setVisibility(I)V

    .line 278
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog$2;->this$0:Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;

    const/4 v1, 0x0

    # setter for: Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->mAnimator:Landroid/animation/AnimatorSet;
    invoke-static {v0, v1}, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->access$202(Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 279
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 267
    iget-boolean v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog$2;->val$show:Z

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog$2;->this$0:Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->setVisibility(I)V

    .line 269
    iget-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog$2;->this$0:Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;

    invoke-virtual {v0}, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->bringToFront()V

    .line 271
    :cond_0
    return-void
.end method
