.class public Lcom/android/systemui/recents/views/RecentsAppListViewAdapter$AppListViewHolder;
.super Lcom/android/systemui/recents/views/BaseAppListViewHolder;
.source "RecentsAppListViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AppListViewHolder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;


# direct methods
.method public constructor <init>(Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;Landroid/view/View;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 359
    iput-object p1, p0, Lcom/android/systemui/recents/views/RecentsAppListViewAdapter$AppListViewHolder;->this$0:Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;

    .line 360
    invoke-direct {p0, p2}, Lcom/android/systemui/recents/views/BaseAppListViewHolder;-><init>(Landroid/view/View;)V

    .line 361
    const v0, 0x7f1301ee

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/recents/views/RecentsAppListViewAdapter$AppListViewHolder;->labelView:Landroid/widget/TextView;

    .line 362
    const v0, 0x7f130093

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/recents/views/RecentsAppListViewAdapter$AppListViewHolder;->iconView:Landroid/widget/ImageView;

    .line 359
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 367
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsAppListViewAdapter$AppListViewHolder;->getAdapterPosition()I

    move-result v0

    .line 368
    .local v0, "position":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 369
    return-void

    .line 372
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsAppListViewAdapter$AppListViewHolder;->this$0:Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;

    invoke-static {v1, v0}, Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;->-wrap0(Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;I)I

    move-result v0

    .line 373
    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsAppListViewAdapter$AppListViewHolder;->this$0:Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;

    invoke-static {v1, v0}, Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;->-wrap1(Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;I)V

    .line 366
    return-void
.end method
