.class Lcom/android/launcher3/home/WorkspaceDragController$3;
.super Ljava/lang/Object;
.source "WorkspaceDragController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/home/WorkspaceDragController;->onDropInternal(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/home/WorkspaceDragController;

.field final synthetic val$widgetHostView:Lcom/android/launcher3/home/LauncherAppWidgetHostView;


# direct methods
.method constructor <init>(Lcom/android/launcher3/home/WorkspaceDragController;Lcom/android/launcher3/home/LauncherAppWidgetHostView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/home/WorkspaceDragController;

    .prologue
    .line 455
    iput-object p1, p0, Lcom/android/launcher3/home/WorkspaceDragController$3;->this$0:Lcom/android/launcher3/home/WorkspaceDragController;

    iput-object p2, p0, Lcom/android/launcher3/home/WorkspaceDragController$3;->val$widgetHostView:Lcom/android/launcher3/home/LauncherAppWidgetHostView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 458
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController$3;->this$0:Lcom/android/launcher3/home/WorkspaceDragController;

    # getter for: Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;
    invoke-static {v0}, Lcom/android/launcher3/home/WorkspaceDragController;->access$000(Lcom/android/launcher3/home/WorkspaceDragController;)Lcom/android/launcher3/home/HomeController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController$3;->val$widgetHostView:Lcom/android/launcher3/home/LauncherAppWidgetHostView;

    iget-object v2, p0, Lcom/android/launcher3/home/WorkspaceDragController$3;->this$0:Lcom/android/launcher3/home/WorkspaceDragController;

    # getter for: Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;
    invoke-static {v2}, Lcom/android/launcher3/home/WorkspaceDragController;->access$200(Lcom/android/launcher3/home/WorkspaceDragController;)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v2

    const/16 v3, 0x32

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher3/home/HomeController;->enterResizeStateDelay(Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/common/base/view/CellLayout;I)V

    .line 459
    return-void
.end method
