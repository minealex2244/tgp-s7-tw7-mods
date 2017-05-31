.class public Lcom/android/systemui/recents/views/NestedAppListView;
.super Landroid/support/v7/widget/RecyclerView;
.source "NestedAppListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/views/NestedAppListView$NestedAppListViewAdapter;,
        Lcom/android/systemui/recents/views/NestedAppListView$NestedItemDecoration;,
        Lcom/android/systemui/recents/views/NestedAppListView$NestedViewHolder;
    }
.end annotation


# instance fields
.field mAdapter:Lcom/android/systemui/recents/views/NestedAppListView$NestedAppListViewAdapter;

.field mContext:Landroid/content/Context;

.field mDisplayOrientation:I

.field mItemContentHeight:I

.field mItemDecoration:Lcom/android/systemui/recents/views/NestedAppListView$NestedItemDecoration;

.field mItemTextDarkColor:I

.field mItemTextShadowColor:I

.field mItemTextShadowSize:F

.field mItemTextShadowYDistance:F

.field mItemTextWhiteColor:I

.field mLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

.field mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/model/RecentsAppListLoader$AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field mLoader:Lcom/android/systemui/recents/model/RecentsAppListLoader;

.field mNeedDarkFont:Z

.field mTopRunningTaskAffinity:Ljava/lang/String;

.field mTopRunningTaskPackageName:Ljava/lang/String;


# direct methods
.method static synthetic -wrap0(Lcom/android/systemui/recents/views/NestedAppListView;Landroid/widget/TextView;Z)V
    .locals 0
    .param p1, "tv"    # Landroid/widget/TextView;
    .param p2, "disabled"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/recents/views/NestedAppListView;->setTextColor(Landroid/widget/TextView;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 78
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/NestedAppListView;->mList:Ljava/util/ArrayList;

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/recents/views/NestedAppListView;->mDisplayOrientation:I

    .line 79
    invoke-direct {p0}, Lcom/android/systemui/recents/views/NestedAppListView;->init()V

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/NestedAppListView;->mList:Ljava/util/ArrayList;

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/recents/views/NestedAppListView;->mDisplayOrientation:I

    .line 74
    invoke-direct {p0}, Lcom/android/systemui/recents/views/NestedAppListView;->init()V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 68
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/NestedAppListView;->mList:Ljava/util/ArrayList;

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/recents/views/NestedAppListView;->mDisplayOrientation:I

    .line 69
    invoke-direct {p0}, Lcom/android/systemui/recents/views/NestedAppListView;->init()V

    .line 67
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 83
    const-string/jumbo v0, "NestedAppListView"

    const-string/jumbo v1, "init()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/recents/events/EventBus;->register(Ljava/lang/Object;)V

    .line 85
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/NestedAppListView;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/views/NestedAppListView;->mContext:Landroid/content/Context;

    .line 86
    iget-object v0, p0, Lcom/android/systemui/recents/views/NestedAppListView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/recents/model/RecentsAppListLoader;->getInstance(Landroid/content/Context;)Lcom/android/systemui/recents/model/RecentsAppListLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/views/NestedAppListView;->mLoader:Lcom/android/systemui/recents/model/RecentsAppListLoader;

    .line 88
    iget-object v0, p0, Lcom/android/systemui/recents/views/NestedAppListView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d03ae

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/systemui/recents/views/NestedAppListView;->mItemContentHeight:I

    .line 90
    iget-object v0, p0, Lcom/android/systemui/recents/views/NestedAppListView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0326

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/NestedAppListView;->mItemTextShadowSize:F

    .line 91
    iget-object v0, p0, Lcom/android/systemui/recents/views/NestedAppListView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0327

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/NestedAppListView;->mItemTextShadowYDistance:F

    .line 92
    iget-object v0, p0, Lcom/android/systemui/recents/views/NestedAppListView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b010b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/NestedAppListView;->mItemTextShadowColor:I

    .line 93
    iget-object v0, p0, Lcom/android/systemui/recents/views/NestedAppListView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b010a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/NestedAppListView;->mItemTextDarkColor:I

    .line 94
    iget-object v0, p0, Lcom/android/systemui/recents/views/NestedAppListView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0109

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/NestedAppListView;->mItemTextWhiteColor:I

    .line 95
    invoke-direct {p0}, Lcom/android/systemui/recents/views/NestedAppListView;->initRecyclerView()V

    .line 82
    return-void
.end method

.method private initRecyclerView()V
    .locals 5

    .prologue
    .line 99
    new-instance v0, Lcom/android/systemui/recents/views/NestedAppListView$NestedAppListViewAdapter;

    iget-object v1, p0, Lcom/android/systemui/recents/views/NestedAppListView;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/recents/views/NestedAppListView$NestedAppListViewAdapter;-><init>(Lcom/android/systemui/recents/views/NestedAppListView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/recents/views/NestedAppListView;->mAdapter:Lcom/android/systemui/recents/views/NestedAppListView$NestedAppListViewAdapter;

    .line 101
    new-instance v0, Landroid/support/v7/widget/GridLayoutManager;

    iget-object v1, p0, Lcom/android/systemui/recents/views/NestedAppListView;->mContext:Landroid/content/Context;

    const/4 v2, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    iput-object v0, p0, Lcom/android/systemui/recents/views/NestedAppListView;->mLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

    .line 102
    iget-object v0, p0, Lcom/android/systemui/recents/views/NestedAppListView;->mLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/NestedAppListView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 104
    new-instance v0, Lcom/android/systemui/recents/views/NestedAppListView$NestedItemDecoration;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/views/NestedAppListView$NestedItemDecoration;-><init>(Lcom/android/systemui/recents/views/NestedAppListView;)V

    iput-object v0, p0, Lcom/android/systemui/recents/views/NestedAppListView;->mItemDecoration:Lcom/android/systemui/recents/views/NestedAppListView$NestedItemDecoration;

    .line 105
    iget-object v0, p0, Lcom/android/systemui/recents/views/NestedAppListView;->mItemDecoration:Lcom/android/systemui/recents/views/NestedAppListView$NestedItemDecoration;

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/NestedAppListView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 98
    return-void
.end method

.method private setTextColor(Landroid/widget/TextView;Z)V
    .locals 4
    .param p1, "tv"    # Landroid/widget/TextView;
    .param p2, "disabled"    # Z

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 273
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/NestedAppListView;->mNeedDarkFont:Z

    if-eqz v0, :cond_0

    .line 274
    invoke-virtual {p1, v3, v3, v3, v1}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 275
    iget v0, p0, Lcom/android/systemui/recents/views/NestedAppListView;->mItemTextDarkColor:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 272
    :goto_0
    return-void

    .line 277
    :cond_0
    if-eqz p2, :cond_1

    .line 278
    invoke-virtual {p1, v3, v3, v3, v1}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 282
    :goto_1
    iget v0, p0, Lcom/android/systemui/recents/views/NestedAppListView;->mItemTextWhiteColor:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 280
    :cond_1
    iget v0, p0, Lcom/android/systemui/recents/views/NestedAppListView;->mItemTextShadowSize:F

    iget v1, p0, Lcom/android/systemui/recents/views/NestedAppListView;->mItemTextShadowYDistance:F

    iget v2, p0, Lcom/android/systemui/recents/views/NestedAppListView;->mItemTextShadowColor:I

    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    goto :goto_1
.end method


# virtual methods
.method public dpToPx(I)I
    .locals 2
    .param p1, "dp"    # I

    .prologue
    .line 141
    int-to-float v0, p1

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 146
    invoke-super {p0}, Landroid/support/v7/widget/RecyclerView;->onAttachedToWindow()V

    .line 145
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/ConfigurationChangedEvent;)V
    .locals 1
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/ConfigurationChangedEvent;

    .prologue
    .line 353
    iget-boolean v0, p1, Lcom/android/systemui/recents/events/activity/ConfigurationChangedEvent;->fromDeviceOrientationChange:Z

    if-eqz v0, :cond_0

    .line 354
    iget-object v0, p0, Lcom/android/systemui/recents/views/NestedAppListView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/recents/misc/Utilities;->getAppConfiguration(Landroid/content/Context;)Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/systemui/recents/views/NestedAppListView;->mDisplayOrientation:I

    .line 352
    :cond_0
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/NotifyDataLoadEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/NotifyDataLoadEvent;

    .prologue
    .line 290
    const-string/jumbo v0, "NestedAppListView"

    const-string/jumbo v1, "onBusEvent(NotifyDataLoadEvent)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    iget-object v0, p0, Lcom/android/systemui/recents/views/NestedAppListView;->mAdapter:Lcom/android/systemui/recents/views/NestedAppListView$NestedAppListViewAdapter;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/NestedAppListView$NestedAppListViewAdapter;->notifyDataSetChanged()V

    .line 289
    return-void
.end method

.method public onViewAttachToWindow(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/recents/model/RecentsAppListLoader$AppInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/model/RecentsAppListLoader$AppInfo;>;"
    const/4 v0, 0x0

    .line 114
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSettingHelper()Lcom/android/systemui/recents/model/RecentsSettingHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/recents/model/RecentsSettingHelper;->needDarkFont()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSettingHelper()Lcom/android/systemui/recents/model/RecentsSettingHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/recents/model/RecentsSettingHelper;->isUPSModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/recents/views/NestedAppListView;->mNeedDarkFont:Z

    .line 115
    iget-object v0, p0, Lcom/android/systemui/recents/views/NestedAppListView;->mAdapter:Lcom/android/systemui/recents/views/NestedAppListView$NestedAppListViewAdapter;

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/NestedAppListView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 116
    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/views/NestedAppListView;->setList(Ljava/util/List;)V

    .line 113
    return-void

    .line 114
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onViewDetachedToWindow()V
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/NestedAppListView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 119
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    .line 296
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->onVisibilityChanged(Landroid/view/View;I)V

    .line 295
    return-void
.end method

.method public setList(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/recents/model/RecentsAppListLoader$AppInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/model/RecentsAppListLoader$AppInfo;>;"
    const/4 v2, 0x0

    .line 125
    iget-object v3, p0, Lcom/android/systemui/recents/views/NestedAppListView;->mList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 126
    iget-object v3, p0, Lcom/android/systemui/recents/views/NestedAppListView;->mList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 127
    iget-object v3, p0, Lcom/android/systemui/recents/views/NestedAppListView;->mAdapter:Lcom/android/systemui/recents/views/NestedAppListView$NestedAppListViewAdapter;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/NestedAppListView$NestedAppListViewAdapter;->notifyDataSetChanged()V

    .line 130
    iget-object v3, p0, Lcom/android/systemui/recents/views/NestedAppListView;->mList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/recents/views/NestedAppListView;->mLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {v4}, Landroid/support/v7/widget/GridLayoutManager;->getSpanCount()I

    move-result v4

    div-int/2addr v3, v4

    .line 131
    iget-object v4, p0, Lcom/android/systemui/recents/views/NestedAppListView;->mList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/recents/views/NestedAppListView;->mLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {v5}, Landroid/support/v7/widget/GridLayoutManager;->getSpanCount()I

    move-result v5

    rem-int/2addr v4, v5

    if-eqz v4, :cond_0

    const/4 v2, 0x1

    .line 130
    :cond_0
    add-int v1, v3, v2

    .line 134
    .local v1, "row":I
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/NestedAppListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 135
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v2, -0x1

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 136
    sget v2, Lcom/android/systemui/recents/views/RecentsAppListLayoutManager;->mItemContentHeight:I

    mul-int/2addr v2, v1

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 137
    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/NestedAppListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 123
    return-void
.end method

.method public updateTopRunningDockedTaskInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "runningPackageName"    # Ljava/lang/String;
    .param p2, "runningAffinity"    # Ljava/lang/String;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/android/systemui/recents/views/NestedAppListView;->mTopRunningTaskPackageName:Ljava/lang/String;

    .line 110
    iput-object p2, p0, Lcom/android/systemui/recents/views/NestedAppListView;->mTopRunningTaskAffinity:Ljava/lang/String;

    .line 108
    return-void
.end method
