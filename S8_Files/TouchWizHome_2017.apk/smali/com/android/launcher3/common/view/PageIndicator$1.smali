.class Lcom/android/launcher3/common/view/PageIndicator$1;
.super Ljava/lang/Object;
.source "PageIndicator.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/common/view/PageIndicator;->getPageIndicatorMarkerClickListener()Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/common/view/PageIndicator;


# direct methods
.method constructor <init>(Lcom/android/launcher3/common/view/PageIndicator;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/common/view/PageIndicator;

    .prologue
    .line 470
    iput-object p1, p0, Lcom/android/launcher3/common/view/PageIndicator$1;->this$0:Lcom/android/launcher3/common/view/PageIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 473
    iget-object v2, p0, Lcom/android/launcher3/common/view/PageIndicator$1;->this$0:Lcom/android/launcher3/common/view/PageIndicator;

    # getter for: Lcom/android/launcher3/common/view/PageIndicator;->mPagedView:Lcom/android/launcher3/common/base/view/PagedView;
    invoke-static {v2}, Lcom/android/launcher3/common/view/PageIndicator;->access$000(Lcom/android/launcher3/common/view/PageIndicator;)Lcom/android/launcher3/common/base/view/PagedView;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 476
    iget-object v2, p0, Lcom/android/launcher3/common/view/PageIndicator$1;->this$0:Lcom/android/launcher3/common/view/PageIndicator;

    # getter for: Lcom/android/launcher3/common/view/PageIndicator;->mPagedView:Lcom/android/launcher3/common/base/view/PagedView;
    invoke-static {v2}, Lcom/android/launcher3/common/view/PageIndicator;->access$000(Lcom/android/launcher3/common/view/PageIndicator;)Lcom/android/launcher3/common/base/view/PagedView;

    move-result-object v2

    instance-of v2, v2, Lcom/android/launcher3/widget/view/WidgetPagedView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher3/common/view/PageIndicator$1;->this$0:Lcom/android/launcher3/common/view/PageIndicator;

    # getter for: Lcom/android/launcher3/common/view/PageIndicator;->mPagedView:Lcom/android/launcher3/common/base/view/PagedView;
    invoke-static {v2}, Lcom/android/launcher3/common/view/PageIndicator;->access$000(Lcom/android/launcher3/common/view/PageIndicator;)Lcom/android/launcher3/common/base/view/PagedView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/common/base/view/PagedView;->isPageMoving()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 495
    :cond_0
    :goto_0
    return-void

    .line 479
    :cond_1
    iget-object v2, p0, Lcom/android/launcher3/common/view/PageIndicator$1;->this$0:Lcom/android/launcher3/common/view/PageIndicator;

    # getter for: Lcom/android/launcher3/common/view/PageIndicator;->mMarkers:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/launcher3/common/view/PageIndicator;->access$100(Lcom/android/launcher3/common/view/PageIndicator;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 480
    .local v0, "index":I
    invoke-static {}, Lcom/android/launcher3/home/ZeroPageController;->isEnableZeroPage()Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, -0x1

    :goto_1
    iget-object v3, p0, Lcom/android/launcher3/common/view/PageIndicator$1;->this$0:Lcom/android/launcher3/common/view/PageIndicator;

    .line 481
    # invokes: Lcom/android/launcher3/common/view/PageIndicator;->getPageIndex(I)I
    invoke-static {v3, v0}, Lcom/android/launcher3/common/view/PageIndicator;->access$200(Lcom/android/launcher3/common/view/PageIndicator;I)I

    move-result v3

    iget-object v4, p0, Lcom/android/launcher3/common/view/PageIndicator$1;->this$0:Lcom/android/launcher3/common/view/PageIndicator;

    # getter for: Lcom/android/launcher3/common/view/PageIndicator;->mMarkerStartOffset:I
    invoke-static {v4}, Lcom/android/launcher3/common/view/PageIndicator;->access$300(Lcom/android/launcher3/common/view/PageIndicator;)I

    move-result v4

    sub-int/2addr v3, v4

    .line 480
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 482
    .local v1, "page":I
    iget-object v2, p0, Lcom/android/launcher3/common/view/PageIndicator$1;->this$0:Lcom/android/launcher3/common/view/PageIndicator;

    invoke-virtual {v2}, Lcom/android/launcher3/common/view/PageIndicator;->isGrouping()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 483
    iget-object v2, p0, Lcom/android/launcher3/common/view/PageIndicator$1;->this$0:Lcom/android/launcher3/common/view/PageIndicator;

    # getter for: Lcom/android/launcher3/common/view/PageIndicator;->mMarkers:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/launcher3/common/view/PageIndicator;->access$100(Lcom/android/launcher3/common/view/PageIndicator;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/view/PageIndicatorMarker;

    invoke-virtual {v2}, Lcom/android/launcher3/common/view/PageIndicatorMarker;->getMarkerType()Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;

    move-result-object v2

    sget-object v3, Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;->ZEROPAGE:Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/launcher3/common/view/PageIndicator$1;->this$0:Lcom/android/launcher3/common/view/PageIndicator;

    .line 484
    # getter for: Lcom/android/launcher3/common/view/PageIndicator;->mMarkers:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/launcher3/common/view/PageIndicator;->access$100(Lcom/android/launcher3/common/view/PageIndicator;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/view/PageIndicatorMarker;

    invoke-virtual {v2}, Lcom/android/launcher3/common/view/PageIndicatorMarker;->getMarkerType()Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;

    move-result-object v2

    sget-object v3, Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;->PLUS:Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;

    if-eq v2, v3, :cond_2

    .line 485
    iget-object v2, p0, Lcom/android/launcher3/common/view/PageIndicator$1;->this$0:Lcom/android/launcher3/common/view/PageIndicator;

    iget-object v3, p0, Lcom/android/launcher3/common/view/PageIndicator$1;->this$0:Lcom/android/launcher3/common/view/PageIndicator;

    # getter for: Lcom/android/launcher3/common/view/PageIndicator;->mMarkerStartOffset:I
    invoke-static {v3}, Lcom/android/launcher3/common/view/PageIndicator;->access$300(Lcom/android/launcher3/common/view/PageIndicator;)I

    move-result v3

    add-int/2addr v3, v1

    # invokes: Lcom/android/launcher3/common/view/PageIndicator;->showPageNumber(I)V
    invoke-static {v2, v3}, Lcom/android/launcher3/common/view/PageIndicator;->access$400(Lcom/android/launcher3/common/view/PageIndicator;I)V

    .line 488
    :cond_2
    iget-object v2, p0, Lcom/android/launcher3/common/view/PageIndicator$1;->this$0:Lcom/android/launcher3/common/view/PageIndicator;

    # getter for: Lcom/android/launcher3/common/view/PageIndicator;->mPagedView:Lcom/android/launcher3/common/base/view/PagedView;
    invoke-static {v2}, Lcom/android/launcher3/common/view/PageIndicator;->access$000(Lcom/android/launcher3/common/view/PageIndicator;)Lcom/android/launcher3/common/base/view/PagedView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/common/base/view/PagedView;->isScrolling()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 489
    iget-object v2, p0, Lcom/android/launcher3/common/view/PageIndicator$1;->this$0:Lcom/android/launcher3/common/view/PageIndicator;

    # getter for: Lcom/android/launcher3/common/view/PageIndicator;->mPagedView:Lcom/android/launcher3/common/base/view/PagedView;
    invoke-static {v2}, Lcom/android/launcher3/common/view/PageIndicator;->access$000(Lcom/android/launcher3/common/view/PageIndicator;)Lcom/android/launcher3/common/base/view/PagedView;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/common/view/PageIndicator$1;->this$0:Lcom/android/launcher3/common/view/PageIndicator;

    # getter for: Lcom/android/launcher3/common/view/PageIndicator;->mPagedView:Lcom/android/launcher3/common/base/view/PagedView;
    invoke-static {v3}, Lcom/android/launcher3/common/view/PageIndicator;->access$000(Lcom/android/launcher3/common/view/PageIndicator;)Lcom/android/launcher3/common/base/view/PagedView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/common/base/view/PagedView;->getNextPage()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/launcher3/common/base/view/PagedView;->setCurrentPage(I)V

    .line 491
    :cond_3
    iget-object v2, p0, Lcom/android/launcher3/common/view/PageIndicator$1;->this$0:Lcom/android/launcher3/common/view/PageIndicator;

    # getter for: Lcom/android/launcher3/common/view/PageIndicator;->mPagedView:Lcom/android/launcher3/common/base/view/PagedView;
    invoke-static {v2}, Lcom/android/launcher3/common/view/PageIndicator;->access$000(Lcom/android/launcher3/common/view/PageIndicator;)Lcom/android/launcher3/common/base/view/PagedView;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/launcher3/common/base/view/PagedView;->loadAssociatedPages(I)V

    .line 492
    iget-object v2, p0, Lcom/android/launcher3/common/view/PageIndicator$1;->this$0:Lcom/android/launcher3/common/view/PageIndicator;

    # getter for: Lcom/android/launcher3/common/view/PageIndicator;->mPagedView:Lcom/android/launcher3/common/base/view/PagedView;
    invoke-static {v2}, Lcom/android/launcher3/common/view/PageIndicator;->access$000(Lcom/android/launcher3/common/view/PageIndicator;)Lcom/android/launcher3/common/base/view/PagedView;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/launcher3/common/base/view/PagedView;->snapToPageSALoggging(Z)V

    .line 493
    iget-object v2, p0, Lcom/android/launcher3/common/view/PageIndicator$1;->this$0:Lcom/android/launcher3/common/view/PageIndicator;

    # getter for: Lcom/android/launcher3/common/view/PageIndicator;->mPagedView:Lcom/android/launcher3/common/base/view/PagedView;
    invoke-static {v2}, Lcom/android/launcher3/common/view/PageIndicator;->access$000(Lcom/android/launcher3/common/view/PageIndicator;)Lcom/android/launcher3/common/base/view/PagedView;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/launcher3/common/base/view/PagedView;->snapToPage(I)V

    goto/16 :goto_0

    .line 480
    .end local v1    # "page":I
    :cond_4
    const/4 v2, 0x0

    goto/16 :goto_1
.end method
