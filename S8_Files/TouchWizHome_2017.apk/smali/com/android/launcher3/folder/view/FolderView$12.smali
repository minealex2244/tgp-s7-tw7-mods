.class Lcom/android/launcher3/folder/view/FolderView$12;
.super Ljava/lang/Object;
.source "FolderView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/folder/view/FolderView;->bind(Lcom/android/launcher3/folder/FolderInfo;Lcom/android/launcher3/common/base/controller/ControllerBase;)V
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
    .line 819
    iput-object p1, p0, Lcom/android/launcher3/folder/view/FolderView$12;->this$0:Lcom/android/launcher3/folder/view/FolderView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 821
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView$12;->this$0:Lcom/android/launcher3/folder/view/FolderView;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/view/FolderView;->getItemCount()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView$12;->this$0:Lcom/android/launcher3/folder/view/FolderView;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/view/FolderView;->isAppsAlphabeticViewType()Z

    move-result v0

    if-nez v0, :cond_0

    .line 822
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView$12;->this$0:Lcom/android/launcher3/folder/view/FolderView;

    # invokes: Lcom/android/launcher3/folder/view/FolderView;->replaceFolderWithFinalItem()V
    invoke-static {v0}, Lcom/android/launcher3/folder/view/FolderView;->access$800(Lcom/android/launcher3/folder/view/FolderView;)V

    .line 824
    :cond_0
    return-void
.end method
