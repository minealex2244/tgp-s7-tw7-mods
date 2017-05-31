.class Lcom/android/systemui/recents/views/NestedAppListView$NestedItemDecoration;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "NestedAppListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/views/NestedAppListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NestedItemDecoration"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/views/NestedAppListView;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/views/NestedAppListView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/recents/views/NestedAppListView;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/android/systemui/recents/views/NestedAppListView$NestedItemDecoration;->this$0:Lcom/android/systemui/recents/views/NestedAppListView;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;ILandroid/support/v7/widget/RecyclerView;)V
    .locals 3
    .param p1, "outRect"    # Landroid/graphics/Rect;
    .param p2, "itemPosition"    # I
    .param p3, "parent"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    const/4 v2, 0x2

    .line 152
    iget-object v1, p0, Lcom/android/systemui/recents/views/NestedAppListView$NestedItemDecoration;->this$0:Lcom/android/systemui/recents/views/NestedAppListView;

    iget-object v1, v1, Lcom/android/systemui/recents/views/NestedAppListView;->mLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {v1}, Landroid/support/v7/widget/GridLayoutManager;->getSpanCount()I

    move-result v0

    .line 154
    .local v0, "spanCount":I
    iget-object v1, p0, Lcom/android/systemui/recents/views/NestedAppListView$NestedItemDecoration;->this$0:Lcom/android/systemui/recents/views/NestedAppListView;

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/views/NestedAppListView;->dpToPx(I)I

    move-result v1

    iput v1, p1, Landroid/graphics/Rect;->left:I

    .line 155
    iget-object v1, p0, Lcom/android/systemui/recents/views/NestedAppListView$NestedItemDecoration;->this$0:Lcom/android/systemui/recents/views/NestedAppListView;

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/views/NestedAppListView;->dpToPx(I)I

    move-result v1

    iput v1, p1, Landroid/graphics/Rect;->top:I

    .line 156
    iget-object v1, p0, Lcom/android/systemui/recents/views/NestedAppListView$NestedItemDecoration;->this$0:Lcom/android/systemui/recents/views/NestedAppListView;

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/views/NestedAppListView;->dpToPx(I)I

    move-result v1

    iput v1, p1, Landroid/graphics/Rect;->right:I

    .line 157
    iget-object v1, p0, Lcom/android/systemui/recents/views/NestedAppListView$NestedItemDecoration;->this$0:Lcom/android/systemui/recents/views/NestedAppListView;

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/views/NestedAppListView;->dpToPx(I)I

    move-result v1

    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    .line 151
    return-void
.end method
