.class Lcom/android/launcher3/widget/controller/WidgetController$4;
.super Ljava/lang/Object;
.source "WidgetController.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/widget/controller/WidgetController;->setPreDrawListener()V
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
    .line 433
    iput-object p1, p0, Lcom/android/launcher3/widget/controller/WidgetController$4;->this$0:Lcom/android/launcher3/widget/controller/WidgetController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 436
    iget-object v1, p0, Lcom/android/launcher3/widget/controller/WidgetController$4;->this$0:Lcom/android/launcher3/widget/controller/WidgetController;

    # invokes: Lcom/android/launcher3/widget/controller/WidgetController;->updateWidgetItems()Z
    invoke-static {v1}, Lcom/android/launcher3/widget/controller/WidgetController;->access$600(Lcom/android/launcher3/widget/controller/WidgetController;)Z

    move-result v0

    .line 437
    .local v0, "invalidate":Z
    iget-object v1, p0, Lcom/android/launcher3/widget/controller/WidgetController$4;->this$0:Lcom/android/launcher3/widget/controller/WidgetController;

    # getter for: Lcom/android/launcher3/widget/controller/WidgetController;->mPagedView:Lcom/android/launcher3/widget/view/WidgetPagedView;
    invoke-static {v1}, Lcom/android/launcher3/widget/controller/WidgetController;->access$400(Lcom/android/launcher3/widget/controller/WidgetController;)Lcom/android/launcher3/widget/view/WidgetPagedView;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Lcom/android/launcher3/widget/view/WidgetPagedView;->prepareInOut(IZ)V

    .line 438
    iget-object v1, p0, Lcom/android/launcher3/widget/controller/WidgetController$4;->this$0:Lcom/android/launcher3/widget/controller/WidgetController;

    # getter for: Lcom/android/launcher3/widget/controller/WidgetController;->mWidgetView:Landroid/widget/FrameLayout;
    invoke-static {v1}, Lcom/android/launcher3/widget/controller/WidgetController;->access$1300(Lcom/android/launcher3/widget/controller/WidgetController;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 439
    return v2
.end method
