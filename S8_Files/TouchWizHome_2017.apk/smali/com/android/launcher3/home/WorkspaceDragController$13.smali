.class Lcom/android/launcher3/home/WorkspaceDragController$13;
.super Ljava/lang/Object;
.source "WorkspaceDragController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/home/WorkspaceDragController;->animateWidgetDrop(Lcom/android/launcher3/common/base/item/ItemInfo;Lcom/android/launcher3/common/base/view/CellLayout;Lcom/android/launcher3/common/drag/DragView;Ljava/lang/Runnable;ILandroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/home/WorkspaceDragController;

.field final synthetic val$finalView:Landroid/view/View;

.field final synthetic val$onCompleteRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/launcher3/home/WorkspaceDragController;Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/home/WorkspaceDragController;

    .prologue
    .line 1477
    iput-object p1, p0, Lcom/android/launcher3/home/WorkspaceDragController$13;->this$0:Lcom/android/launcher3/home/WorkspaceDragController;

    iput-object p2, p0, Lcom/android/launcher3/home/WorkspaceDragController$13;->val$finalView:Landroid/view/View;

    iput-object p3, p0, Lcom/android/launcher3/home/WorkspaceDragController$13;->val$onCompleteRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1480
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController$13;->val$finalView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1481
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController$13;->val$finalView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1483
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController$13;->val$onCompleteRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 1484
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController$13;->val$onCompleteRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1486
    :cond_1
    return-void
.end method
