.class Lcom/android/launcher3/common/drag/DragManager$ScrollRunnable;
.super Ljava/lang/Object;
.source "DragManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/common/drag/DragManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScrollRunnable"
.end annotation


# instance fields
.field private mDirection:I

.field final synthetic this$0:Lcom/android/launcher3/common/drag/DragManager;


# direct methods
.method constructor <init>(Lcom/android/launcher3/common/drag/DragManager;)V
    .locals 0

    .prologue
    .line 973
    iput-object p1, p0, Lcom/android/launcher3/common/drag/DragManager$ScrollRunnable;->this$0:Lcom/android/launcher3/common/drag/DragManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 974
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 977
    iget-object v0, p0, Lcom/android/launcher3/common/drag/DragManager$ScrollRunnable;->this$0:Lcom/android/launcher3/common/drag/DragManager;

    # getter for: Lcom/android/launcher3/common/drag/DragManager;->mDragScroller:Lcom/android/launcher3/common/drag/DragScroller;
    invoke-static {v0}, Lcom/android/launcher3/common/drag/DragManager;->access$100(Lcom/android/launcher3/common/drag/DragManager;)Lcom/android/launcher3/common/drag/DragScroller;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 978
    iget v0, p0, Lcom/android/launcher3/common/drag/DragManager$ScrollRunnable;->mDirection:I

    if-nez v0, :cond_1

    .line 979
    iget-object v0, p0, Lcom/android/launcher3/common/drag/DragManager$ScrollRunnable;->this$0:Lcom/android/launcher3/common/drag/DragManager;

    # getter for: Lcom/android/launcher3/common/drag/DragManager;->mDragScroller:Lcom/android/launcher3/common/drag/DragScroller;
    invoke-static {v0}, Lcom/android/launcher3/common/drag/DragManager;->access$100(Lcom/android/launcher3/common/drag/DragManager;)Lcom/android/launcher3/common/drag/DragScroller;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/launcher3/common/drag/DragScroller;->scrollLeft()V

    .line 983
    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/common/drag/DragManager$ScrollRunnable;->this$0:Lcom/android/launcher3/common/drag/DragManager;

    # setter for: Lcom/android/launcher3/common/drag/DragManager;->mScrollState:I
    invoke-static {v0, v2}, Lcom/android/launcher3/common/drag/DragManager;->access$202(Lcom/android/launcher3/common/drag/DragManager;I)I

    .line 984
    iget-object v0, p0, Lcom/android/launcher3/common/drag/DragManager$ScrollRunnable;->this$0:Lcom/android/launcher3/common/drag/DragManager;

    # setter for: Lcom/android/launcher3/common/drag/DragManager;->mDistanceSinceScroll:I
    invoke-static {v0, v2}, Lcom/android/launcher3/common/drag/DragManager;->access$302(Lcom/android/launcher3/common/drag/DragManager;I)I

    .line 985
    iget-object v0, p0, Lcom/android/launcher3/common/drag/DragManager$ScrollRunnable;->this$0:Lcom/android/launcher3/common/drag/DragManager;

    # getter for: Lcom/android/launcher3/common/drag/DragManager;->mDragScroller:Lcom/android/launcher3/common/drag/DragScroller;
    invoke-static {v0}, Lcom/android/launcher3/common/drag/DragManager;->access$100(Lcom/android/launcher3/common/drag/DragManager;)Lcom/android/launcher3/common/drag/DragScroller;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/launcher3/common/drag/DragScroller;->onExitScrollArea()Z

    .line 987
    iget-object v0, p0, Lcom/android/launcher3/common/drag/DragManager$ScrollRunnable;->this$0:Lcom/android/launcher3/common/drag/DragManager;

    invoke-virtual {v0}, Lcom/android/launcher3/common/drag/DragManager;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 989
    iget-object v0, p0, Lcom/android/launcher3/common/drag/DragManager$ScrollRunnable;->this$0:Lcom/android/launcher3/common/drag/DragManager;

    iget-object v1, p0, Lcom/android/launcher3/common/drag/DragManager$ScrollRunnable;->this$0:Lcom/android/launcher3/common/drag/DragManager;

    # getter for: Lcom/android/launcher3/common/drag/DragManager;->mLastTouch:[I
    invoke-static {v1}, Lcom/android/launcher3/common/drag/DragManager;->access$400(Lcom/android/launcher3/common/drag/DragManager;)[I

    move-result-object v1

    aget v1, v1, v2

    iget-object v2, p0, Lcom/android/launcher3/common/drag/DragManager$ScrollRunnable;->this$0:Lcom/android/launcher3/common/drag/DragManager;

    # getter for: Lcom/android/launcher3/common/drag/DragManager;->mLastTouch:[I
    invoke-static {v2}, Lcom/android/launcher3/common/drag/DragManager;->access$400(Lcom/android/launcher3/common/drag/DragManager;)[I

    move-result-object v2

    const/4 v3, 0x1

    aget v2, v2, v3

    # invokes: Lcom/android/launcher3/common/drag/DragManager;->checkScrollState(II)V
    invoke-static {v0, v1, v2}, Lcom/android/launcher3/common/drag/DragManager;->access$500(Lcom/android/launcher3/common/drag/DragManager;II)V

    .line 992
    :cond_0
    return-void

    .line 981
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/common/drag/DragManager$ScrollRunnable;->this$0:Lcom/android/launcher3/common/drag/DragManager;

    # getter for: Lcom/android/launcher3/common/drag/DragManager;->mDragScroller:Lcom/android/launcher3/common/drag/DragScroller;
    invoke-static {v0}, Lcom/android/launcher3/common/drag/DragManager;->access$100(Lcom/android/launcher3/common/drag/DragManager;)Lcom/android/launcher3/common/drag/DragScroller;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/launcher3/common/drag/DragScroller;->scrollRight()V

    goto :goto_0
.end method

.method setDirection(I)V
    .locals 0
    .param p1, "direction"    # I

    .prologue
    .line 995
    iput p1, p0, Lcom/android/launcher3/common/drag/DragManager$ScrollRunnable;->mDirection:I

    .line 996
    return-void
.end method
