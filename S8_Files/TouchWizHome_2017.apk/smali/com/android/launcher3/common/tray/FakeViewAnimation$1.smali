.class Lcom/android/launcher3/common/tray/FakeViewAnimation$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FakeViewAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/common/tray/FakeViewAnimation;->getTranslationAnimation(Landroid/view/View;IZ)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/common/tray/FakeViewAnimation;

.field final synthetic val$targetView:Landroid/view/View;

.field final synthetic val$toBeShown:Z

.field final synthetic val$toTranslationY:I


# direct methods
.method constructor <init>(Lcom/android/launcher3/common/tray/FakeViewAnimation;Landroid/view/View;ZI)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/common/tray/FakeViewAnimation;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/launcher3/common/tray/FakeViewAnimation$1;->this$0:Lcom/android/launcher3/common/tray/FakeViewAnimation;

    iput-object p2, p0, Lcom/android/launcher3/common/tray/FakeViewAnimation$1;->val$targetView:Landroid/view/View;

    iput-boolean p3, p0, Lcom/android/launcher3/common/tray/FakeViewAnimation$1;->val$toBeShown:Z

    iput p4, p0, Lcom/android/launcher3/common/tray/FakeViewAnimation$1;->val$toTranslationY:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 89
    invoke-virtual {p0, p1}, Lcom/android/launcher3/common/tray/FakeViewAnimation$1;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 90
    iget-object v0, p0, Lcom/android/launcher3/common/tray/FakeViewAnimation$1;->val$targetView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher3/common/tray/FakeViewAnimation$1;->val$toBeShown:Z

    if-nez v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/android/launcher3/common/tray/FakeViewAnimation$1;->val$targetView:Landroid/view/View;

    iget v1, p0, Lcom/android/launcher3/common/tray/FakeViewAnimation$1;->val$toTranslationY:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 93
    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/launcher3/common/tray/FakeViewAnimation$1;->this$0:Lcom/android/launcher3/common/tray/FakeViewAnimation;

    # getter for: Lcom/android/launcher3/common/tray/FakeViewAnimation;->mFakeViewAnimators:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/launcher3/common/tray/FakeViewAnimation;->access$000(Lcom/android/launcher3/common/tray/FakeViewAnimation;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/common/tray/FakeViewAnimation$1;->val$targetView:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    iget-object v0, p0, Lcom/android/launcher3/common/tray/FakeViewAnimation$1;->val$targetView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher3/common/tray/FakeViewAnimation$1;->val$toBeShown:Z

    if-nez v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/android/launcher3/common/tray/FakeViewAnimation$1;->val$targetView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 85
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/launcher3/common/tray/FakeViewAnimation$1;->val$targetView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher3/common/tray/FakeViewAnimation$1;->val$toBeShown:Z

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/android/launcher3/common/tray/FakeViewAnimation$1;->val$targetView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 77
    :cond_0
    return-void
.end method
