.class Lcom/android/launcher3/home/HomeController$3;
.super Ljava/lang/Object;
.source "HomeController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/home/HomeController;->enterResizeState(Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/common/base/view/CellLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/home/HomeController;

.field final synthetic val$hostView:Landroid/appwidget/AppWidgetHostView;

.field final synthetic val$layout:Lcom/android/launcher3/common/base/view/CellLayout;


# direct methods
.method constructor <init>(Lcom/android/launcher3/home/HomeController;Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/common/base/view/CellLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/home/HomeController;

    .prologue
    .line 1122
    iput-object p1, p0, Lcom/android/launcher3/home/HomeController$3;->this$0:Lcom/android/launcher3/home/HomeController;

    iput-object p2, p0, Lcom/android/launcher3/home/HomeController$3;->val$hostView:Landroid/appwidget/AppWidgetHostView;

    iput-object p3, p0, Lcom/android/launcher3/home/HomeController$3;->val$layout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 1124
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController$3;->this$0:Lcom/android/launcher3/home/HomeController;

    # getter for: Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;
    invoke-static {v0}, Lcom/android/launcher3/home/HomeController;->access$300(Lcom/android/launcher3/home/HomeController;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/android/launcher3/Utilities;->changeEdgeHandleState(Landroid/content/Context;Z)V

    .line 1125
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController$3;->this$0:Lcom/android/launcher3/home/HomeController;

    # getter for: Lcom/android/launcher3/home/HomeController;->mState:Lcom/android/launcher3/home/HomeController$State;
    invoke-static {v0}, Lcom/android/launcher3/home/HomeController;->access$400(Lcom/android/launcher3/home/HomeController;)Lcom/android/launcher3/home/HomeController$State;

    move-result-object v0

    const/4 v1, 0x3

    # invokes: Lcom/android/launcher3/home/HomeController$State;->set(I)V
    invoke-static {v0, v1}, Lcom/android/launcher3/home/HomeController$State;->access$100(Lcom/android/launcher3/home/HomeController$State;I)V

    .line 1126
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController$3;->this$0:Lcom/android/launcher3/home/HomeController;

    # getter for: Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;
    invoke-static {v0}, Lcom/android/launcher3/home/HomeController;->access$500(Lcom/android/launcher3/home/HomeController;)Lcom/android/launcher3/home/Workspace;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/launcher3/home/Workspace;->setCrosshairsVisibilityChilds(I)V

    .line 1127
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController$3;->this$0:Lcom/android/launcher3/home/HomeController;

    # getter for: Lcom/android/launcher3/home/HomeController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;
    invoke-static {v0}, Lcom/android/launcher3/home/HomeController;->access$600(Lcom/android/launcher3/home/HomeController;)Lcom/android/launcher3/common/view/DragLayer;

    move-result-object v1

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController$3;->this$0:Lcom/android/launcher3/home/HomeController;

    # getter for: Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;
    invoke-static {v0}, Lcom/android/launcher3/home/HomeController;->access$500(Lcom/android/launcher3/home/HomeController;)Lcom/android/launcher3/home/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/home/Workspace;->getDragController()Lcom/android/launcher3/home/WorkspaceDragController;

    move-result-object v2

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController$3;->val$hostView:Landroid/appwidget/AppWidgetHostView;

    check-cast v0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;

    iget-object v3, p0, Lcom/android/launcher3/home/HomeController$3;->val$layout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v1, v2, v0, v3}, Lcom/android/launcher3/common/view/DragLayer;->addResizeFrame(Lcom/android/launcher3/common/drag/DragState;Lcom/android/launcher3/home/LauncherAppWidgetHostView;Lcom/android/launcher3/common/base/view/CellLayout;)V

    .line 1129
    return-void
.end method
