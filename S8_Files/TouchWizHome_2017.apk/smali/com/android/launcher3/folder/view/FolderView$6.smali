.class Lcom/android/launcher3/folder/view/FolderView$6;
.super Ljava/lang/Object;
.source "FolderView.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/folder/view/FolderView;->onFinishInflate()V
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
    .line 369
    iput-object p1, p0, Lcom/android/launcher3/folder/view/FolderView$6;->this$0:Lcom/android/launcher3/folder/view/FolderView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 372
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView$6;->this$0:Lcom/android/launcher3/folder/view/FolderView;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/view/FolderView;->isEditingName()Z

    move-result v0

    if-nez v0, :cond_0

    .line 373
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView$6;->this$0:Lcom/android/launcher3/folder/view/FolderView;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/view/FolderView;->startEditingFolderName()V

    .line 375
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView$6;->this$0:Lcom/android/launcher3/folder/view/FolderView;

    # getter for: Lcom/android/launcher3/folder/view/FolderView;->mFolderName:Lcom/android/launcher3/folder/view/FolderNameEditText;
    invoke-static {v0}, Lcom/android/launcher3/folder/view/FolderView;->access$000(Lcom/android/launcher3/folder/view/FolderView;)Lcom/android/launcher3/folder/view/FolderNameEditText;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/view/FolderNameEditText;->setCursorVisible(Z)V

    .line 376
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView$6;->this$0:Lcom/android/launcher3/folder/view/FolderView;

    # getter for: Lcom/android/launcher3/folder/view/FolderView;->mFolderName:Lcom/android/launcher3/folder/view/FolderNameEditText;
    invoke-static {v0}, Lcom/android/launcher3/folder/view/FolderView;->access$000(Lcom/android/launcher3/folder/view/FolderView;)Lcom/android/launcher3/folder/view/FolderNameEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/folder/view/FolderNameEditText;->requestFocus()Z

    .line 377
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView$6;->this$0:Lcom/android/launcher3/folder/view/FolderView;

    # getter for: Lcom/android/launcher3/folder/view/FolderView;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v0}, Lcom/android/launcher3/folder/view/FolderView;->access$300(Lcom/android/launcher3/folder/view/FolderView;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView$6;->this$0:Lcom/android/launcher3/folder/view/FolderView;

    # getter for: Lcom/android/launcher3/folder/view/FolderView;->mFolderName:Lcom/android/launcher3/folder/view/FolderNameEditText;
    invoke-static {v1}, Lcom/android/launcher3/folder/view/FolderView;->access$000(Lcom/android/launcher3/folder/view/FolderView;)Lcom/android/launcher3/folder/view/FolderNameEditText;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 380
    return v2
.end method
