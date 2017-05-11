.class Lcom/android/launcher3/folder/view/FolderView$13;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FolderView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/folder/view/FolderView;->onOpen(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/folder/view/FolderView;


# direct methods
.method constructor <init>(Lcom/android/launcher3/folder/view/FolderView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/folder/view/FolderView;

    .prologue
    .line 869
    iput-object p1, p0, Lcom/android/launcher3/folder/view/FolderView$13;->this$0:Lcom/android/launcher3/folder/view/FolderView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 879
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView$13;->this$0:Lcom/android/launcher3/folder/view/FolderView;

    const/4 v1, 0x2

    # setter for: Lcom/android/launcher3/folder/view/FolderView;->mViewState:I
    invoke-static {v0, v1}, Lcom/android/launcher3/folder/view/FolderView;->access$102(Lcom/android/launcher3/folder/view/FolderView;I)I

    .line 880
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView$13;->this$0:Lcom/android/launcher3/folder/view/FolderView;

    # getter for: Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;
    invoke-static {v0}, Lcom/android/launcher3/folder/view/FolderView;->access$900(Lcom/android/launcher3/folder/view/FolderView;)Lcom/android/launcher3/folder/view/FolderPagedView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/folder/view/FolderPagedView;->setFocusOnFirstChild()V

    .line 881
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 872
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView$13;->this$0:Lcom/android/launcher3/folder/view/FolderView;

    const/16 v1, 0x20

    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderView$13;->this$0:Lcom/android/launcher3/folder/view/FolderView;

    .line 873
    # getter for: Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;
    invoke-static {v2}, Lcom/android/launcher3/folder/view/FolderView;->access$900(Lcom/android/launcher3/folder/view/FolderView;)Lcom/android/launcher3/folder/view/FolderPagedView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/folder/view/FolderPagedView;->getAccessibilityDescription()Ljava/lang/String;

    move-result-object v2

    .line 872
    # invokes: Lcom/android/launcher3/folder/view/FolderView;->sendCustomAccessibilityEvent(ILjava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/launcher3/folder/view/FolderView;->access$1000(Lcom/android/launcher3/folder/view/FolderView;ILjava/lang/String;)V

    .line 874
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView$13;->this$0:Lcom/android/launcher3/folder/view/FolderView;

    const/4 v1, 0x1

    # setter for: Lcom/android/launcher3/folder/view/FolderView;->mViewState:I
    invoke-static {v0, v1}, Lcom/android/launcher3/folder/view/FolderView;->access$102(Lcom/android/launcher3/folder/view/FolderView;I)I

    .line 875
    return-void
.end method
