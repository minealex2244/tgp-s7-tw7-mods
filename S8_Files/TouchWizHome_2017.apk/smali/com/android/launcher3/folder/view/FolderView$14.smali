.class Lcom/android/launcher3/folder/view/FolderView$14;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FolderView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/folder/view/FolderView;->onClose(Landroid/animation/Animator;)V
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
    .line 926
    iput-object p1, p0, Lcom/android/launcher3/folder/view/FolderView$14;->this$0:Lcom/android/launcher3/folder/view/FolderView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 929
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView$14;->this$0:Lcom/android/launcher3/folder/view/FolderView;

    const/4 v1, 0x0

    # setter for: Lcom/android/launcher3/folder/view/FolderView;->mViewState:I
    invoke-static {v0, v1}, Lcom/android/launcher3/folder/view/FolderView;->access$102(Lcom/android/launcher3/folder/view/FolderView;I)I

    .line 930
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView$14;->this$0:Lcom/android/launcher3/folder/view/FolderView;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/view/FolderView;->onCloseComplete()V

    .line 931
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 935
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView$14;->this$0:Lcom/android/launcher3/folder/view/FolderView;

    const/16 v1, 0x20

    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderView$14;->this$0:Lcom/android/launcher3/folder/view/FolderView;

    .line 936
    invoke-virtual {v2}, Lcom/android/launcher3/folder/view/FolderView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f080029

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 935
    # invokes: Lcom/android/launcher3/folder/view/FolderView;->sendCustomAccessibilityEvent(ILjava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/launcher3/folder/view/FolderView;->access$1000(Lcom/android/launcher3/folder/view/FolderView;ILjava/lang/String;)V

    .line 937
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView$14;->this$0:Lcom/android/launcher3/folder/view/FolderView;

    const/4 v1, 0x1

    # setter for: Lcom/android/launcher3/folder/view/FolderView;->mViewState:I
    invoke-static {v0, v1}, Lcom/android/launcher3/folder/view/FolderView;->access$102(Lcom/android/launcher3/folder/view/FolderView;I)I

    .line 938
    return-void
.end method
