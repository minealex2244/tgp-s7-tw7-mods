.class Lcom/android/launcher3/home/ZeroPageController$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ZeroPageController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/home/ZeroPageController;->animatePage(IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/home/ZeroPageController;

.field final synthetic val$pageChanged:Z


# direct methods
.method constructor <init>(Lcom/android/launcher3/home/ZeroPageController;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/home/ZeroPageController;

    .prologue
    .line 806
    iput-object p1, p0, Lcom/android/launcher3/home/ZeroPageController$2;->this$0:Lcom/android/launcher3/home/ZeroPageController;

    iput-boolean p2, p0, Lcom/android/launcher3/home/ZeroPageController$2;->val$pageChanged:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method private reset()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 818
    iget-object v0, p0, Lcom/android/launcher3/home/ZeroPageController$2;->this$0:Lcom/android/launcher3/home/ZeroPageController;

    # setter for: Lcom/android/launcher3/home/ZeroPageController;->mBezelSwipe:Z
    invoke-static {v0, v6}, Lcom/android/launcher3/home/ZeroPageController;->access$802(Lcom/android/launcher3/home/ZeroPageController;Z)Z

    .line 819
    iget-object v0, p0, Lcom/android/launcher3/home/ZeroPageController$2;->this$0:Lcom/android/launcher3/home/ZeroPageController;

    # setter for: Lcom/android/launcher3/home/ZeroPageController;->mMovingState:I
    invoke-static {v0, v6}, Lcom/android/launcher3/home/ZeroPageController;->access$902(Lcom/android/launcher3/home/ZeroPageController;I)I

    .line 820
    iget-object v0, p0, Lcom/android/launcher3/home/ZeroPageController$2;->this$0:Lcom/android/launcher3/home/ZeroPageController;

    # setter for: Lcom/android/launcher3/home/ZeroPageController;->mPreValues:I
    invoke-static {v0, v6}, Lcom/android/launcher3/home/ZeroPageController;->access$1002(Lcom/android/launcher3/home/ZeroPageController;I)I

    .line 821
    iget-object v0, p0, Lcom/android/launcher3/home/ZeroPageController$2;->this$0:Lcom/android/launcher3/home/ZeroPageController;

    # getter for: Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;
    invoke-static {v0}, Lcom/android/launcher3/home/ZeroPageController;->access$1100(Lcom/android/launcher3/home/ZeroPageController;)Lcom/android/launcher3/home/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/home/Workspace;->pageEndMoving()V

    .line 822
    iget-boolean v0, p0, Lcom/android/launcher3/home/ZeroPageController$2;->val$pageChanged:Z

    if-eqz v0, :cond_1

    .line 823
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportZeroPageHome()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 824
    iget-object v0, p0, Lcom/android/launcher3/home/ZeroPageController$2;->this$0:Lcom/android/launcher3/home/ZeroPageController;

    # getter for: Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;
    invoke-static {v0}, Lcom/android/launcher3/home/ZeroPageController;->access$100(Lcom/android/launcher3/home/ZeroPageController;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "start_from_zeropage"

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/Utilities;->setZeroPageKey(Landroid/content/Context;ZLjava/lang/String;)V

    .line 826
    iget-object v0, p0, Lcom/android/launcher3/home/ZeroPageController$2;->this$0:Lcom/android/launcher3/home/ZeroPageController;

    # getter for: Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;
    invoke-static {v0}, Lcom/android/launcher3/home/ZeroPageController;->access$100(Lcom/android/launcher3/home/ZeroPageController;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/home/ZeroPageProvider;->notifyChange(Landroid/content/Context;)V

    .line 829
    :cond_0
    invoke-static {}, Lcom/android/launcher3/util/logging/GSIMLogging;->getInstance()Lcom/android/launcher3/util/logging/GSIMLogging;

    move-result-object v1

    const-string v2, "ZPEN"

    const/4 v3, 0x0

    const-wide/16 v4, -0x1

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/util/logging/GSIMLogging;->insertLogging(Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 831
    invoke-static {}, Lcom/android/launcher3/util/logging/GSIMLogging;->getInstance()Lcom/android/launcher3/util/logging/GSIMLogging;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/util/logging/GSIMLogging;->setZeroPageStartTime()V

    .line 833
    :cond_1
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 814
    invoke-direct {p0}, Lcom/android/launcher3/home/ZeroPageController$2;->reset()V

    .line 815
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 809
    invoke-direct {p0}, Lcom/android/launcher3/home/ZeroPageController$2;->reset()V

    .line 810
    return-void
.end method
