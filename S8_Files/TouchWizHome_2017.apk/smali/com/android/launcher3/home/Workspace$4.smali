.class Lcom/android/launcher3/home/Workspace$4;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/home/Workspace;->fadeAndRemoveEmptyScreen(IILjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/home/Workspace;

.field final synthetic val$cl:Lcom/android/launcher3/common/base/view/CellLayout;


# direct methods
.method constructor <init>(Lcom/android/launcher3/home/Workspace;Lcom/android/launcher3/common/base/view/CellLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/home/Workspace;

    .prologue
    .line 506
    iput-object p1, p0, Lcom/android/launcher3/home/Workspace$4;->this$0:Lcom/android/launcher3/home/Workspace;

    iput-object p2, p0, Lcom/android/launcher3/home/Workspace$4;->val$cl:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const-wide/16 v2, -0xc9

    .line 509
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace$4;->this$0:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/home/Workspace;->hasExtraEmptyScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 510
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace$4;->this$0:Lcom/android/launcher3/home/Workspace;

    # getter for: Lcom/android/launcher3/home/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/LongArrayMap;
    invoke-static {v0}, Lcom/android/launcher3/home/Workspace;->access$100(Lcom/android/launcher3/home/Workspace;)Lcom/android/launcher3/util/LongArrayMap;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/util/LongArrayMap;->remove(J)V

    .line 511
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace$4;->this$0:Lcom/android/launcher3/home/Workspace;

    # getter for: Lcom/android/launcher3/home/Workspace;->mScreenOrder:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/launcher3/home/Workspace;->access$200(Lcom/android/launcher3/home/Workspace;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 512
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace$4;->this$0:Lcom/android/launcher3/home/Workspace;

    iget-object v1, p0, Lcom/android/launcher3/home/Workspace$4;->val$cl:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/Workspace;->removeView(Landroid/view/View;)V

    .line 514
    :cond_0
    return-void
.end method
