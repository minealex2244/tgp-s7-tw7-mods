.class Lcom/android/launcher3/widget/controller/WidgetController$5;
.super Ljava/lang/Object;
.source "WidgetController.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/widget/controller/WidgetController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/widget/controller/WidgetController;


# direct methods
.method constructor <init>(Lcom/android/launcher3/widget/controller/WidgetController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/widget/controller/WidgetController;

    .prologue
    .line 444
    iput-object p1, p0, Lcom/android/launcher3/widget/controller/WidgetController$5;->this$0:Lcom/android/launcher3/widget/controller/WidgetController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 6

    .prologue
    .line 447
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 448
    .local v2, "r":Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/android/launcher3/widget/controller/WidgetController$5;->this$0:Lcom/android/launcher3/widget/controller/WidgetController;

    # getter for: Lcom/android/launcher3/widget/controller/WidgetController;->mNoResultView:Landroid/widget/LinearLayout;
    invoke-static {v4}, Lcom/android/launcher3/widget/controller/WidgetController;->access$1400(Lcom/android/launcher3/widget/controller/WidgetController;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getRootView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 449
    .local v3, "screenHeight":I
    iget-object v4, p0, Lcom/android/launcher3/widget/controller/WidgetController$5;->this$0:Lcom/android/launcher3/widget/controller/WidgetController;

    # getter for: Lcom/android/launcher3/widget/controller/WidgetController;->mNoResultView:Landroid/widget/LinearLayout;
    invoke-static {v4}, Lcom/android/launcher3/widget/controller/WidgetController;->access$1400(Lcom/android/launcher3/widget/controller/WidgetController;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 450
    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v3, v4

    .line 451
    .local v0, "heightDiff":I
    iget-object v4, p0, Lcom/android/launcher3/widget/controller/WidgetController$5;->this$0:Lcom/android/launcher3/widget/controller/WidgetController;

    # getter for: Lcom/android/launcher3/widget/controller/WidgetController;->mNoResultView:Landroid/widget/LinearLayout;
    invoke-static {v4}, Lcom/android/launcher3/widget/controller/WidgetController;->access$1400(Lcom/android/launcher3/widget/controller/WidgetController;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 452
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    sub-int v5, v3, v0

    if-eq v4, v5, :cond_0

    .line 453
    sub-int v4, v3, v0

    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 454
    iget-object v4, p0, Lcom/android/launcher3/widget/controller/WidgetController$5;->this$0:Lcom/android/launcher3/widget/controller/WidgetController;

    # getter for: Lcom/android/launcher3/widget/controller/WidgetController;->mNoResultView:Landroid/widget/LinearLayout;
    invoke-static {v4}, Lcom/android/launcher3/widget/controller/WidgetController;->access$1400(Lcom/android/launcher3/widget/controller/WidgetController;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 456
    :cond_0
    return-void
.end method
