.class Lcom/android/launcher3/common/multiselect/MultiSelectPanel$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "MultiSelectPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->showMultiSelectPanel(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/common/multiselect/MultiSelectPanel;

.field final synthetic val$show:Z


# direct methods
.method constructor <init>(Lcom/android/launcher3/common/multiselect/MultiSelectPanel;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/common/multiselect/MultiSelectPanel;

    .prologue
    .line 208
    iput-object p1, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel$3;->this$0:Lcom/android/launcher3/common/multiselect/MultiSelectPanel;

    iput-boolean p2, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel$3;->val$show:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 226
    iget-boolean v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel$3;->val$show:Z

    if-nez v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel$3;->this$0:Lcom/android/launcher3/common/multiselect/MultiSelectPanel;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->setVisibility(I)V

    .line 229
    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 219
    iget-boolean v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel$3;->val$show:Z

    if-nez v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel$3;->this$0:Lcom/android/launcher3/common/multiselect/MultiSelectPanel;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->setVisibility(I)V

    .line 222
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 211
    iget-boolean v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel$3;->val$show:Z

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel$3;->this$0:Lcom/android/launcher3/common/multiselect/MultiSelectPanel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->setVisibility(I)V

    .line 213
    iget-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel$3;->this$0:Lcom/android/launcher3/common/multiselect/MultiSelectPanel;

    invoke-virtual {v0}, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->bringToFront()V

    .line 215
    :cond_0
    return-void
.end method