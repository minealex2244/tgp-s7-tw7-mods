.class Lcom/android/launcher3/home/Workspace$11;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/home/Workspace;->addCustomLayout(Lcom/android/launcher3/home/WorkspaceCellLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/home/Workspace;


# direct methods
.method constructor <init>(Lcom/android/launcher3/home/Workspace;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/home/Workspace;

    .prologue
    .line 1761
    iput-object p1, p0, Lcom/android/launcher3/home/Workspace$11;->this$0:Lcom/android/launcher3/home/Workspace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1764
    const-string v1, "Launcher.Workspace"

    const-string v2, "onClick PageDelete"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1766
    iget-object v1, p0, Lcom/android/launcher3/home/Workspace$11;->this$0:Lcom/android/launcher3/home/Workspace;

    iget-object v2, p0, Lcom/android/launcher3/home/Workspace$11;->this$0:Lcom/android/launcher3/home/Workspace;

    # getter for: Lcom/android/launcher3/home/Workspace;->mCurrentPage:I
    invoke-static {v2}, Lcom/android/launcher3/home/Workspace;->access$800(Lcom/android/launcher3/home/Workspace;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/home/Workspace;->isEmptyPage(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1767
    iget-object v1, p0, Lcom/android/launcher3/home/Workspace$11;->this$0:Lcom/android/launcher3/home/Workspace;

    # invokes: Lcom/android/launcher3/home/Workspace;->showRemoveScreenPopup()V
    invoke-static {v1}, Lcom/android/launcher3/home/Workspace;->access$900(Lcom/android/launcher3/home/Workspace;)V

    .line 1768
    const/4 v0, 0x1

    .line 1773
    .local v0, "checkEmpty":I
    :goto_0
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/home/Workspace$11;->this$0:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher3/home/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080189

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/home/Workspace$11;->this$0:Lcom/android/launcher3/home/Workspace;

    .line 1774
    invoke-virtual {v3}, Lcom/android/launcher3/home/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080146

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    int-to-long v4, v0

    .line 1773
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    .line 1775
    return-void

    .line 1770
    .end local v0    # "checkEmpty":I
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/home/Workspace$11;->this$0:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/home/Workspace;->removeScreenWithItem()V

    .line 1771
    const/4 v0, 0x0

    .restart local v0    # "checkEmpty":I
    goto :goto_0
.end method
