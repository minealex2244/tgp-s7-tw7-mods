.class Lcom/android/launcher3/common/quickoption/QuickOptionView$3$1;
.super Ljava/lang/Object;
.source "QuickOptionView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/common/quickoption/QuickOptionView$3;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher3/common/quickoption/QuickOptionView$3;


# direct methods
.method constructor <init>(Lcom/android/launcher3/common/quickoption/QuickOptionView$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/launcher3/common/quickoption/QuickOptionView$3;

    .prologue
    .line 264
    iput-object p1, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView$3$1;->this$1:Lcom/android/launcher3/common/quickoption/QuickOptionView$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 267
    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView$3$1;->this$1:Lcom/android/launcher3/common/quickoption/QuickOptionView$3;

    iget-object v0, v0, Lcom/android/launcher3/common/quickoption/QuickOptionView$3;->this$0:Lcom/android/launcher3/common/quickoption/QuickOptionView;

    # getter for: Lcom/android/launcher3/common/quickoption/QuickOptionView;->mQuickOptionManager:Lcom/android/launcher3/common/quickoption/QuickOptionManager;
    invoke-static {v0}, Lcom/android/launcher3/common/quickoption/QuickOptionView;->access$300(Lcom/android/launcher3/common/quickoption/QuickOptionView;)Lcom/android/launcher3/common/quickoption/QuickOptionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/common/quickoption/QuickOptionManager;->getItemRemoveAnimation()Lcom/android/launcher3/common/quickoption/ItemRemoveAnimation;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 268
    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView$3$1;->this$1:Lcom/android/launcher3/common/quickoption/QuickOptionView$3;

    iget-object v0, v0, Lcom/android/launcher3/common/quickoption/QuickOptionView$3;->this$0:Lcom/android/launcher3/common/quickoption/QuickOptionView;

    # getter for: Lcom/android/launcher3/common/quickoption/QuickOptionView;->mLauncher:Lcom/android/launcher3/Launcher;
    invoke-static {v0}, Lcom/android/launcher3/common/quickoption/QuickOptionView;->access$400(Lcom/android/launcher3/common/quickoption/QuickOptionView;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getHomeController()Lcom/android/launcher3/home/HomeController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeController;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 269
    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView$3$1;->this$1:Lcom/android/launcher3/common/quickoption/QuickOptionView$3;

    iget-object v0, v0, Lcom/android/launcher3/common/quickoption/QuickOptionView$3;->this$0:Lcom/android/launcher3/common/quickoption/QuickOptionView;

    # getter for: Lcom/android/launcher3/common/quickoption/QuickOptionView;->mLauncher:Lcom/android/launcher3/Launcher;
    invoke-static {v0}, Lcom/android/launcher3/common/quickoption/QuickOptionView;->access$400(Lcom/android/launcher3/common/quickoption/QuickOptionView;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getHomeController()Lcom/android/launcher3/home/HomeController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/HomeController;->exitResizeState(Z)V

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView$3$1;->this$1:Lcom/android/launcher3/common/quickoption/QuickOptionView$3;

    iget-object v0, v0, Lcom/android/launcher3/common/quickoption/QuickOptionView$3;->this$0:Lcom/android/launcher3/common/quickoption/QuickOptionView;

    # getter for: Lcom/android/launcher3/common/quickoption/QuickOptionView;->mQuickOptionManager:Lcom/android/launcher3/common/quickoption/QuickOptionManager;
    invoke-static {v0}, Lcom/android/launcher3/common/quickoption/QuickOptionView;->access$300(Lcom/android/launcher3/common/quickoption/QuickOptionView;)Lcom/android/launcher3/common/quickoption/QuickOptionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/common/quickoption/QuickOptionManager;->getItemRemoveAnimation()Lcom/android/launcher3/common/quickoption/ItemRemoveAnimation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/common/quickoption/ItemRemoveAnimation;->animate()V

    .line 272
    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView$3$1;->this$1:Lcom/android/launcher3/common/quickoption/QuickOptionView$3;

    iget-object v0, v0, Lcom/android/launcher3/common/quickoption/QuickOptionView$3;->this$0:Lcom/android/launcher3/common/quickoption/QuickOptionView;

    # getter for: Lcom/android/launcher3/common/quickoption/QuickOptionView;->mQuickOptionManager:Lcom/android/launcher3/common/quickoption/QuickOptionManager;
    invoke-static {v0}, Lcom/android/launcher3/common/quickoption/QuickOptionView;->access$300(Lcom/android/launcher3/common/quickoption/QuickOptionView;)Lcom/android/launcher3/common/quickoption/QuickOptionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/common/quickoption/QuickOptionManager;->clearItemRemoveAnimation()V

    .line 274
    :cond_1
    return-void
.end method
