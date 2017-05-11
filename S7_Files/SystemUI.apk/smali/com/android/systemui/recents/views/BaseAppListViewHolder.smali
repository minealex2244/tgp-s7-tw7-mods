.class public abstract Lcom/android/systemui/recents/views/BaseAppListViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "BaseAppListViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public asyncTask:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/systemui/recents/model/RecentsAppListLoader$LoadIconDynamicAsyncTask;",
            ">;"
        }
    .end annotation
.end field

.field public contentView:Landroid/widget/LinearLayout;

.field public iconView:Landroid/widget/ImageView;

.field public labelView:Landroid/widget/TextView;

.field public lineView:Landroid/view/View;

.field public nestedAppListView:Lcom/android/systemui/recents/views/NestedAppListView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 24
    const v0, 0x7f13031f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/recents/views/BaseAppListViewHolder;->contentView:Landroid/widget/LinearLayout;

    .line 22
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 28
    return-void
.end method

.method public setAsyncTask(Lcom/android/systemui/recents/model/RecentsAppListLoader$LoadIconDynamicAsyncTask;)V
    .locals 1
    .param p1, "task"    # Lcom/android/systemui/recents/model/RecentsAppListLoader$LoadIconDynamicAsyncTask;

    .prologue
    .line 33
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/systemui/recents/views/BaseAppListViewHolder;->asyncTask:Ljava/lang/ref/WeakReference;

    .line 32
    return-void
.end method
