.class Lcom/android/launcher3/home/LauncherAppWidgetHostView$HierarchyChangeListener;
.super Ljava/lang/Object;
.source "LauncherAppWidgetHostView.java"

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/home/LauncherAppWidgetHostView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HierarchyChangeListener"
.end annotation


# instance fields
.field mHostView:Lcom/android/launcher3/home/LauncherAppWidgetHostView;

.field final synthetic this$0:Lcom/android/launcher3/home/LauncherAppWidgetHostView;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/home/LauncherAppWidgetHostView;Lcom/android/launcher3/home/LauncherAppWidgetHostView;)V
    .locals 0
    .param p2, "hostView"    # Lcom/android/launcher3/home/LauncherAppWidgetHostView;

    .prologue
    .line 509
    iput-object p1, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView$HierarchyChangeListener;->this$0:Lcom/android/launcher3/home/LauncherAppWidgetHostView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 510
    iput-object p2, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView$HierarchyChangeListener;->mHostView:Lcom/android/launcher3/home/LauncherAppWidgetHostView;

    .line 511
    return-void
.end method


# virtual methods
.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 2
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "child"    # Landroid/view/View;

    .prologue
    .line 515
    iget-object v0, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView$HierarchyChangeListener;->this$0:Lcom/android/launcher3/home/LauncherAppWidgetHostView;

    # getter for: Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mHasScrollView:Z
    invoke-static {v0}, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->access$400(Lcom/android/launcher3/home/LauncherAppWidgetHostView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 516
    iget-object v0, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView$HierarchyChangeListener;->this$0:Lcom/android/launcher3/home/LauncherAppWidgetHostView;

    iget-object v1, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView$HierarchyChangeListener;->this$0:Lcom/android/launcher3/home/LauncherAppWidgetHostView;

    # invokes: Lcom/android/launcher3/home/LauncherAppWidgetHostView;->findScrollView(Landroid/view/View;)Z
    invoke-static {v1, p2}, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->access$500(Lcom/android/launcher3/home/LauncherAppWidgetHostView;Landroid/view/View;)Z

    move-result v1

    # setter for: Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mHasScrollView:Z
    invoke-static {v0, v1}, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->access$402(Lcom/android/launcher3/home/LauncherAppWidgetHostView;Z)Z

    .line 518
    :cond_0
    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 3
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "child"    # Landroid/view/View;

    .prologue
    .line 522
    iget-object v0, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView$HierarchyChangeListener;->this$0:Lcom/android/launcher3/home/LauncherAppWidgetHostView;

    # getter for: Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mHasScrollView:Z
    invoke-static {v0}, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->access$400(Lcom/android/launcher3/home/LauncherAppWidgetHostView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 523
    iget-object v0, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView$HierarchyChangeListener;->this$0:Lcom/android/launcher3/home/LauncherAppWidgetHostView;

    iget-object v1, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView$HierarchyChangeListener;->this$0:Lcom/android/launcher3/home/LauncherAppWidgetHostView;

    iget-object v2, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView$HierarchyChangeListener;->mHostView:Lcom/android/launcher3/home/LauncherAppWidgetHostView;

    # invokes: Lcom/android/launcher3/home/LauncherAppWidgetHostView;->findScrollView(Landroid/view/View;)Z
    invoke-static {v1, v2}, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->access$500(Lcom/android/launcher3/home/LauncherAppWidgetHostView;Landroid/view/View;)Z

    move-result v1

    # setter for: Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mHasScrollView:Z
    invoke-static {v0, v1}, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->access$402(Lcom/android/launcher3/home/LauncherAppWidgetHostView;Z)Z

    .line 525
    :cond_0
    return-void
.end method
