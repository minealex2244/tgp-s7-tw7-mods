.class Lcom/android/launcher3/home/WorkspaceDragController$12;
.super Ljava/lang/Object;
.source "WorkspaceDragController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/home/WorkspaceDragController;->onDropCompleted(Landroid/view/View;Lcom/android/launcher3/common/drag/DropTarget$DragObject;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/home/WorkspaceDragController;


# direct methods
.method constructor <init>(Lcom/android/launcher3/home/WorkspaceDragController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/home/WorkspaceDragController;

    .prologue
    .line 1220
    iput-object p1, p0, Lcom/android/launcher3/home/WorkspaceDragController$12;->this$0:Lcom/android/launcher3/home/WorkspaceDragController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1223
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController$12;->this$0:Lcom/android/launcher3/home/WorkspaceDragController;

    # getter for: Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;
    invoke-static {v0}, Lcom/android/launcher3/home/WorkspaceDragController;->access$000(Lcom/android/launcher3/home/WorkspaceDragController;)Lcom/android/launcher3/home/HomeController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeController;->exitDragStateDelayed()V

    .line 1224
    return-void
.end method
