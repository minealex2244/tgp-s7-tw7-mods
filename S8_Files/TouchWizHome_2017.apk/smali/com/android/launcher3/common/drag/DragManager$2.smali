.class Lcom/android/launcher3/common/drag/DragManager$2;
.super Ljava/lang/Object;
.source "DragManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/common/drag/DragManager;->endDrag()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/common/drag/DragManager;

.field final synthetic val$extraDragView:Lcom/android/launcher3/common/drag/DragView;


# direct methods
.method constructor <init>(Lcom/android/launcher3/common/drag/DragManager;Lcom/android/launcher3/common/drag/DragView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/common/drag/DragManager;

    .prologue
    .line 562
    iput-object p1, p0, Lcom/android/launcher3/common/drag/DragManager$2;->this$0:Lcom/android/launcher3/common/drag/DragManager;

    iput-object p2, p0, Lcom/android/launcher3/common/drag/DragManager$2;->val$extraDragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 565
    iget-object v0, p0, Lcom/android/launcher3/common/drag/DragManager$2;->val$extraDragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v0}, Lcom/android/launcher3/common/drag/DragView;->remove()V

    .line 566
    return-void
.end method
