.class Lcom/android/launcher3/allapps/view/AppsPagedView$3;
.super Ljava/lang/Object;
.source "AppsPagedView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/allapps/view/AppsPagedView;->fadeAndRemoveEmptyScreen(IILjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/allapps/view/AppsPagedView;

.field final synthetic val$cl:Lcom/android/launcher3/common/base/view/CellLayout;


# direct methods
.method constructor <init>(Lcom/android/launcher3/allapps/view/AppsPagedView;Lcom/android/launcher3/common/base/view/CellLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/allapps/view/AppsPagedView;

    .prologue
    .line 273
    iput-object p1, p0, Lcom/android/launcher3/allapps/view/AppsPagedView$3;->this$0:Lcom/android/launcher3/allapps/view/AppsPagedView;

    iput-object p2, p0, Lcom/android/launcher3/allapps/view/AppsPagedView$3;->val$cl:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 276
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsPagedView$3;->this$0:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->hasExtraEmptyScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsPagedView$3;->this$0:Lcom/android/launcher3/allapps/view/AppsPagedView;

    # getter for: Lcom/android/launcher3/allapps/view/AppsPagedView;->mCellLayouts:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->access$000(Lcom/android/launcher3/allapps/view/AppsPagedView;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/allapps/view/AppsPagedView$3;->this$0:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getExtraEmptyScreenIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 278
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsPagedView$3;->this$0:Lcom/android/launcher3/allapps/view/AppsPagedView;

    iget-object v1, p0, Lcom/android/launcher3/allapps/view/AppsPagedView$3;->val$cl:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/view/AppsPagedView;->removeView(Landroid/view/View;)V

    .line 280
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsPagedView$3;->this$0:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->removeEmptyScreen()Z

    .line 282
    :cond_0
    return-void
.end method
