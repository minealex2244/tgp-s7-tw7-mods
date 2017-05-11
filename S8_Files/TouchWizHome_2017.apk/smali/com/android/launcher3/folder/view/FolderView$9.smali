.class Lcom/android/launcher3/folder/view/FolderView$9;
.super Ljava/lang/Object;
.source "FolderView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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
    .line 444
    iput-object p1, p0, Lcom/android/launcher3/folder/view/FolderView$9;->this$0:Lcom/android/launcher3/folder/view/FolderView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 447
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 448
    .local v0, "action":I
    if-nez v0, :cond_1

    .line 449
    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView$9;->this$0:Lcom/android/launcher3/folder/view/FolderView;

    # getter for: Lcom/android/launcher3/folder/view/FolderView;->mFolderOptionButton:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/launcher3/folder/view/FolderView;->access$600(Lcom/android/launcher3/folder/view/FolderView;)Landroid/widget/ImageView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 450
    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView$9;->this$0:Lcom/android/launcher3/folder/view/FolderView;

    # getter for: Lcom/android/launcher3/folder/view/FolderView;->mFolderOptionButton:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/launcher3/folder/view/FolderView;->access$600(Lcom/android/launcher3/folder/view/FolderView;)Landroid/widget/ImageView;

    move-result-object v1

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 457
    :cond_0
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 452
    :cond_1
    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 453
    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView$9;->this$0:Lcom/android/launcher3/folder/view/FolderView;

    # getter for: Lcom/android/launcher3/folder/view/FolderView;->mFolderOptionButton:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/launcher3/folder/view/FolderView;->access$600(Lcom/android/launcher3/folder/view/FolderView;)Landroid/widget/ImageView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 454
    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView$9;->this$0:Lcom/android/launcher3/folder/view/FolderView;

    # getter for: Lcom/android/launcher3/folder/view/FolderView;->mFolderOptionButton:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/launcher3/folder/view/FolderView;->access$600(Lcom/android/launcher3/folder/view/FolderView;)Landroid/widget/ImageView;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_0
.end method
