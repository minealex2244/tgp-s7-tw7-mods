.class Lcom/android/launcher3/home/Workspace$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Workspace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/home/Workspace;->fadeAndRemoveEmptyScreen(IILjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/home/Workspace;

.field final synthetic val$onComplete:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/launcher3/home/Workspace;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/home/Workspace;

    .prologue
    .line 520
    iput-object p1, p0, Lcom/android/launcher3/home/Workspace$5;->this$0:Lcom/android/launcher3/home/Workspace;

    iput-object p2, p0, Lcom/android/launcher3/home/Workspace$5;->val$onComplete:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 523
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace$5;->this$0:Lcom/android/launcher3/home/Workspace;

    # getter for: Lcom/android/launcher3/home/Workspace;->mRemoveEmptyScreenRunnable:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/android/launcher3/home/Workspace;->access$300(Lcom/android/launcher3/home/Workspace;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 524
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace$5;->this$0:Lcom/android/launcher3/home/Workspace;

    # getter for: Lcom/android/launcher3/home/Workspace;->mRemoveEmptyScreenRunnable:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/android/launcher3/home/Workspace;->access$300(Lcom/android/launcher3/home/Workspace;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 526
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace$5;->val$onComplete:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 527
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace$5;->val$onComplete:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 529
    :cond_1
    return-void
.end method
