.class Lcom/android/launcher3/home/WorkspaceDragController$5;
.super Ljava/lang/Object;
.source "WorkspaceDragController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/home/WorkspaceDragController;->onDropExternalFromWidget(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/home/WorkspaceDragController;

.field final synthetic val$screenId:J


# direct methods
.method constructor <init>(Lcom/android/launcher3/home/WorkspaceDragController;J)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/home/WorkspaceDragController;

    .prologue
    .line 581
    iput-object p1, p0, Lcom/android/launcher3/home/WorkspaceDragController$5;->this$0:Lcom/android/launcher3/home/WorkspaceDragController;

    iput-wide p2, p0, Lcom/android/launcher3/home/WorkspaceDragController$5;->val$screenId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 584
    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController$5;->this$0:Lcom/android/launcher3/home/WorkspaceDragController;

    # getter for: Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;
    invoke-static {v1}, Lcom/android/launcher3/home/WorkspaceDragController;->access$300(Lcom/android/launcher3/home/WorkspaceDragController;)Lcom/android/launcher3/home/Workspace;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 585
    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController$5;->this$0:Lcom/android/launcher3/home/WorkspaceDragController;

    # getter for: Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;
    invoke-static {v1}, Lcom/android/launcher3/home/WorkspaceDragController;->access$300(Lcom/android/launcher3/home/WorkspaceDragController;)Lcom/android/launcher3/home/Workspace;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/launcher3/home/WorkspaceDragController$5;->val$screenId:J

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/home/Workspace;->getPageIndexForScreenId(J)I

    move-result v0

    .line 586
    .local v0, "snapScreen":I
    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController$5;->this$0:Lcom/android/launcher3/home/WorkspaceDragController;

    # getter for: Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;
    invoke-static {v1}, Lcom/android/launcher3/home/WorkspaceDragController;->access$300(Lcom/android/launcher3/home/WorkspaceDragController;)Lcom/android/launcher3/home/Workspace;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/launcher3/home/Workspace;->snapToPage(I)V

    .line 588
    .end local v0    # "snapScreen":I
    :cond_0
    return-void
.end method
