.class public abstract Lcom/android/launcher3/widget/view/WidgetPagedView;
.super Lcom/android/launcher3/common/base/view/PagedView;
.source "WidgetPagedView.java"

# interfaces
.implements Lcom/android/launcher3/common/base/view/LauncherTransitionable;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/widget/view/WidgetPagedView$ItemViewPool;,
        Lcom/android/launcher3/widget/view/WidgetPagedView$Filter;,
        Lcom/android/launcher3/widget/view/WidgetPagedView$Listener;
    }
.end annotation


# static fields
.field private static final PAGE_CACHE_SIZE:I = 0x3

.field public static final PAGE_MINIMIZE:I = 0x0

.field public static final PAGE_NORMALIZE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "WidgetPagedView"


# instance fields
.field private mChildrenLayersEnabled:Z

.field private mDisplayWidgetItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mDragInProgress:Z

.field public mDragOnSearchState:Z

.field private mFilter:Lcom/android/launcher3/widget/view/WidgetPagedView$Filter;

.field private mFilterString:Ljava/lang/String;

.field private mItemKeyEventListener:Lcom/android/launcher3/widget/controller/WidgetFocusHelper$ItemKeyEventListener;

.field private mItemOnKeyListener:Lcom/android/launcher3/widget/controller/WidgetFocusHelper$WidgetItemKeyListener;

.field private final mItemViewPool:Lcom/android/launcher3/widget/view/WidgetPagedView$ItemViewPool;

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private mListener:Lcom/android/launcher3/widget/view/WidgetPagedView$Listener;

.field private mNumWidgetPages:I

.field private mPageCacheSize:I

.field private mWidgetItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 141
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/widget/view/WidgetPagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 142
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 145
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/widget/view/WidgetPagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 146
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 149
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/common/base/view/PagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mWidgetItems:Ljava/util/List;

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mDisplayWidgetItems:Ljava/util/List;

    .line 89
    iput-boolean v1, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mDragOnSearchState:Z

    .line 90
    iput-boolean v1, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mDragInProgress:Z

    .line 91
    iput v2, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mPageCacheSize:I

    .line 92
    iput-boolean v1, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mChildrenLayersEnabled:Z

    .line 570
    new-instance v0, Lcom/android/launcher3/widget/view/WidgetPagedView$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/widget/view/WidgetPagedView$1;-><init>(Lcom/android/launcher3/widget/view/WidgetPagedView;)V

    iput-object v0, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mItemKeyEventListener:Lcom/android/launcher3/widget/controller/WidgetFocusHelper$ItemKeyEventListener;

    .line 150
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 151
    new-instance v0, Lcom/android/launcher3/widget/view/WidgetPagedView$ItemViewPool;

    iget-object v1, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-direct {v0, p0, v1}, Lcom/android/launcher3/widget/view/WidgetPagedView$ItemViewPool;-><init>(Lcom/android/launcher3/widget/view/WidgetPagedView;Landroid/view/LayoutInflater;)V

    iput-object v0, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mItemViewPool:Lcom/android/launcher3/widget/view/WidgetPagedView$ItemViewPool;

    .line 152
    new-instance v0, Lcom/android/launcher3/widget/controller/WidgetFocusHelper$WidgetItemKeyListener;

    iget-object v1, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mItemKeyEventListener:Lcom/android/launcher3/widget/controller/WidgetFocusHelper$ItemKeyEventListener;

    invoke-direct {v0, v1}, Lcom/android/launcher3/widget/controller/WidgetFocusHelper$WidgetItemKeyListener;-><init>(Lcom/android/launcher3/widget/controller/WidgetFocusHelper$ItemKeyEventListener;)V

    iput-object v0, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mItemOnKeyListener:Lcom/android/launcher3/widget/controller/WidgetFocusHelper$WidgetItemKeyListener;

    .line 153
    invoke-virtual {p0, v2}, Lcom/android/launcher3/widget/view/WidgetPagedView;->setSaveEnabled(Z)V

    .line 154
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/widget/view/WidgetPagedView;)Lcom/android/launcher3/widget/view/WidgetPagedView$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/widget/view/WidgetPagedView;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mListener:Lcom/android/launcher3/widget/view/WidgetPagedView$Listener;

    return-object v0
.end method

.method private enableHwLayersOnVisiblePages()V
    .locals 9

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 501
    iget-boolean v8, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mChildrenLayersEnabled:Z

    if-eqz v8, :cond_3

    .line 502
    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetPagedView;->getChildCount()I

    move-result v5

    .line 503
    .local v5, "screenCount":I
    iget-object v8, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mTempVisiblePagesRange:[I

    invoke-virtual {p0, v8}, Lcom/android/launcher3/widget/view/WidgetPagedView;->getVisiblePages([I)V

    .line 504
    iget-object v8, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mTempVisiblePagesRange:[I

    aget v3, v8, v7

    .line 505
    .local v3, "leftScreen":I
    iget-object v8, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mTempVisiblePagesRange:[I

    aget v4, v8, v6

    .line 506
    .local v4, "rightScreen":I
    if-ne v3, v4, :cond_0

    .line 508
    add-int/lit8 v8, v5, -0x1

    if-ge v4, v8, :cond_1

    .line 509
    add-int/lit8 v4, v4, 0x1

    .line 515
    :cond_0
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v5, :cond_3

    .line 516
    invoke-virtual {p0, v1}, Lcom/android/launcher3/widget/view/WidgetPagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/widget/view/WidgetPageLayout;

    .line 518
    .local v2, "layout":Lcom/android/launcher3/widget/view/WidgetPageLayout;
    if-gt v3, v1, :cond_2

    if-gt v1, v4, :cond_2

    move v0, v6

    .line 519
    .local v0, "enableLayer":Z
    :goto_2
    invoke-virtual {v2, v0}, Lcom/android/launcher3/widget/view/WidgetPageLayout;->enableHardwareLayers(Z)V

    .line 515
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 510
    .end local v0    # "enableLayer":Z
    .end local v1    # "i":I
    .end local v2    # "layout":Lcom/android/launcher3/widget/view/WidgetPageLayout;
    :cond_1
    if-lez v3, :cond_0

    .line 511
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .restart local v1    # "i":I
    .restart local v2    # "layout":Lcom/android/launcher3/widget/view/WidgetPageLayout;
    :cond_2
    move v0, v7

    .line 518
    goto :goto_2

    .line 522
    .end local v1    # "i":I
    .end local v2    # "layout":Lcom/android/launcher3/widget/view/WidgetPageLayout;
    .end local v3    # "leftScreen":I
    .end local v4    # "rightScreen":I
    .end local v5    # "screenCount":I
    :cond_3
    return-void
.end method

.method private runFilter()V
    .locals 2

    .prologue
    .line 222
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/widget/view/WidgetPagedView;->runFilter(IZ)V

    .line 223
    return-void
.end method

.method private runFilter(IZ)V
    .locals 4
    .param p1, "page"    # I
    .param p2, "force"    # Z

    .prologue
    .line 226
    iget-object v1, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mDisplayWidgetItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 227
    iget-object v1, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mFilter:Lcom/android/launcher3/widget/view/WidgetPagedView$Filter;

    if-eqz v1, :cond_1

    .line 228
    iget-object v1, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mDisplayWidgetItems:Ljava/util/List;

    iget-object v2, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mFilter:Lcom/android/launcher3/widget/view/WidgetPagedView$Filter;

    iget-object v3, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mWidgetItems:Ljava/util/List;

    invoke-interface {v2, v3}, Lcom/android/launcher3/widget/view/WidgetPagedView$Filter;->filterWidgets(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 232
    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mListener:Lcom/android/launcher3/widget/view/WidgetPagedView$Listener;

    if-eqz v1, :cond_0

    .line 233
    iget-object v2, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mListener:Lcom/android/launcher3/widget/view/WidgetPagedView$Listener;

    iget-object v1, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mDisplayWidgetItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    invoke-interface {v2, v1}, Lcom/android/launcher3/widget/view/WidgetPagedView$Listener;->onSearchResult(Z)V

    .line 235
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher3/widget/view/WidgetPagedView;->updatePageCounts()V

    .line 236
    const/4 v1, -0x1

    if-eq p1, v1, :cond_3

    move v0, p1

    .line 237
    .local v0, "pos":I
    :goto_2
    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/view/WidgetPagedView;->invalidatePageData(I)V

    .line 238
    return-void

    .line 230
    .end local v0    # "pos":I
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mDisplayWidgetItems:Ljava/util/List;

    iget-object v2, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mWidgetItems:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 233
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 236
    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetPagedView;->getCurrentPage()I

    move-result v0

    goto :goto_2
.end method

.method private syncWidgetPageItems(IZ)V
    .locals 11
    .param p1, "pageIndex"    # I
    .param p2, "immediate"    # Z

    .prologue
    .line 269
    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetPagedView;->getRowCount()I

    move-result v8

    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetPagedView;->getColumnCount()I

    move-result v9

    mul-int v4, v8, v9

    .line 270
    .local v4, "numItemsPerPage":I
    const/4 v5, 0x0

    .local v5, "offset":I
    const/4 v0, 0x0

    .line 271
    .local v0, "end":I
    const/4 v3, 0x0

    .line 272
    .local v3, "items":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    mul-int v5, p1, v4

    .line 273
    add-int v8, v5, v4

    iget-object v9, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mDisplayWidgetItems:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 274
    if-le v5, v0, :cond_1

    .line 293
    :cond_0
    return-void

    .line 276
    :cond_1
    iget-object v8, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mDisplayWidgetItems:Ljava/util/List;

    invoke-interface {v8, v5, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    .line 278
    const-string v8, "WidgetPagedView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "syncWidgetPageItems Page: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " immediate "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " subListOffsets "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    invoke-virtual {p0, p1}, Lcom/android/launcher3/widget/view/WidgetPagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/widget/view/WidgetPageLayout;

    .line 282
    .local v6, "page":Lcom/android/launcher3/widget/view/WidgetPageLayout;
    invoke-virtual {v6}, Lcom/android/launcher3/widget/view/WidgetPageLayout;->removeAllViews()V

    .line 283
    iget-object v8, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mFilterString:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetPagedView;->getState()Lcom/android/launcher3/widget/controller/WidgetState$State;

    move-result-object v9

    invoke-virtual {v6, v3, v8, v9}, Lcom/android/launcher3/widget/view/WidgetPageLayout;->bindItems(Ljava/util/List;Ljava/lang/String;Lcom/android/launcher3/widget/controller/WidgetState$State;)V

    .line 285
    invoke-virtual {v6}, Lcom/android/launcher3/widget/view/WidgetPageLayout;->getChildCount()I

    move-result v7

    .line 286
    .local v7, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v7, :cond_0

    .line 287
    invoke-virtual {v6, v1}, Lcom/android/launcher3/widget/view/WidgetPageLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/widget/view/WidgetItemView;

    .line 288
    .local v2, "itemView":Lcom/android/launcher3/widget/view/WidgetItemView;
    invoke-virtual {v2, p0}, Lcom/android/launcher3/widget/view/WidgetItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 289
    invoke-virtual {v2}, Lcom/android/launcher3/widget/view/WidgetItemView;->supportLongClick()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 290
    invoke-virtual {v2, p0}, Lcom/android/launcher3/widget/view/WidgetItemView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 286
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private updatePageCounts()V
    .locals 3

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mDisplayWidgetItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-float v0, v0

    .line 177
    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetPagedView;->getRowCount()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetPagedView;->getColumnCount()I

    move-result v2

    mul-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    .line 176
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mNumWidgetPages:I

    .line 178
    return-void
.end method


# virtual methods
.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 0
    .param p2, "direction"    # I
    .param p3, "focusableMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 361
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher3/common/base/view/PagedView;->addFocusables(Ljava/util/ArrayList;II)V

    .line 362
    return-void
.end method

.method public applySearchResult(Ljava/lang/String;)V
    .locals 1
    .param p1, "searchString"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 433
    invoke-direct {p0, v0, v0}, Lcom/android/launcher3/widget/view/WidgetPagedView;->runFilter(IZ)V

    .line 434
    return-void
.end method

.method public changeColorForBg(Z)V
    .locals 5
    .param p1, "whiteBg"    # Z

    .prologue
    .line 396
    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetPagedView;->getChildCount()I

    move-result v0

    .line 397
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 398
    invoke-virtual {p0, v1}, Lcom/android/launcher3/widget/view/WidgetPagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 399
    .local v3, "view":Landroid/view/View;
    instance-of v4, v3, Lcom/android/launcher3/widget/view/WidgetPageLayout;

    if-eqz v4, :cond_0

    .line 400
    check-cast v3, Lcom/android/launcher3/widget/view/WidgetPageLayout;

    .end local v3    # "view":Landroid/view/View;
    invoke-virtual {v3, p1}, Lcom/android/launcher3/widget/view/WidgetPageLayout;->changeColorForBg(Z)V

    .line 397
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 403
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetPagedView;->getPageIndicator()Lcom/android/launcher3/common/view/PageIndicator;

    move-result-object v2

    .line 404
    .local v2, "pageIndicator":Lcom/android/launcher3/common/view/PageIndicator;
    if-eqz v2, :cond_2

    .line 405
    invoke-virtual {v2, p1}, Lcom/android/launcher3/common/view/PageIndicator;->changeColorForBg(Z)V

    .line 407
    :cond_2
    return-void
.end method

.method public clearAccessibilityFocus()V
    .locals 7

    .prologue
    .line 370
    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetPagedView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "accessibility_enabled"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 371
    const-string v4, "WidgetPagedView"

    const-string v5, "Try to clear accessibility focus in widgets"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetPagedView;->getCurrentPage()I

    move-result v0

    .line 373
    .local v0, "current":I
    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/view/WidgetPagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/widget/view/WidgetPageLayout;

    .line 374
    .local v2, "page":Lcom/android/launcher3/widget/view/WidgetPageLayout;
    if-eqz v2, :cond_1

    .line 375
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v2}, Lcom/android/launcher3/widget/view/WidgetPageLayout;->getChildCount()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 376
    invoke-virtual {v2, v1}, Lcom/android/launcher3/widget/view/WidgetPageLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 377
    .local v3, "v":Landroid/view/View;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/view/View;->isAccessibilityFocused()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 378
    const/16 v4, 0x80

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    .line 375
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 382
    .end local v0    # "current":I
    .end local v1    # "i":I
    .end local v2    # "page":Lcom/android/launcher3/widget/view/WidgetPageLayout;
    .end local v3    # "v":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public findItemView(Lcom/android/launcher3/common/base/item/PendingAddItemInfo;)Lcom/android/launcher3/widget/view/WidgetItemView;
    .locals 12
    .param p1, "findInfo"    # Lcom/android/launcher3/common/base/item/PendingAddItemInfo;

    .prologue
    const/4 v9, 0x0

    .line 540
    if-nez p1, :cond_1

    .line 541
    const-string v10, "WidgetPagedView"

    const-string v11, "findInfo is null"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v9

    .line 567
    :cond_0
    :goto_0
    return-object v0

    .line 544
    :cond_1
    iget-object v1, p1, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;->componentName:Landroid/content/ComponentName;

    .line 545
    .local v1, "componentName":Landroid/content/ComponentName;
    invoke-virtual {p1}, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;->getUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v8

    .line 546
    .local v8, "userHandle":Lcom/android/launcher3/common/compat/UserHandleCompat;
    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetPagedView;->getChildCount()I

    move-result v6

    .line 547
    .local v6, "pageCount":I
    const/4 v7, 0x0

    .local v7, "pageIndex":I
    :goto_1
    if-ge v7, v6, :cond_4

    .line 548
    invoke-virtual {p0, v7}, Lcom/android/launcher3/widget/view/WidgetPagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/widget/view/WidgetPageLayout;

    .line 549
    .local v5, "page":Lcom/android/launcher3/widget/view/WidgetPageLayout;
    instance-of v10, v5, Lcom/android/launcher3/widget/view/WidgetPageLayout;

    if-eqz v10, :cond_3

    .line 550
    invoke-virtual {v5}, Lcom/android/launcher3/widget/view/WidgetPageLayout;->getChildCount()I

    move-result v3

    .line 551
    .local v3, "itemCount":I
    const/4 v4, 0x0

    .local v4, "itemIndex":I
    :goto_2
    if-ge v4, v3, :cond_3

    .line 552
    invoke-virtual {v5, v4}, Lcom/android/launcher3/widget/view/WidgetPageLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/view/WidgetItemView;

    .line 553
    .local v0, "child":Lcom/android/launcher3/widget/view/WidgetItemView;
    instance-of v10, v0, Lcom/android/launcher3/widget/view/WidgetItemView;

    if-eqz v10, :cond_2

    .line 554
    invoke-virtual {v0}, Lcom/android/launcher3/widget/view/WidgetItemView;->getWidgets()Ljava/util/List;

    move-result-object v10

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;

    .line 555
    .local v2, "info":Lcom/android/launcher3/common/base/item/PendingAddItemInfo;
    if-eqz v2, :cond_2

    .line 556
    iget-object v10, v2, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v10}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 557
    invoke-virtual {v2}, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;->getUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/android/launcher3/common/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 551
    .end local v2    # "info":Lcom/android/launcher3/common/base/item/PendingAddItemInfo;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 547
    .end local v0    # "child":Lcom/android/launcher3/widget/view/WidgetItemView;
    .end local v3    # "itemCount":I
    .end local v4    # "itemIndex":I
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 566
    .end local v5    # "page":Lcom/android/launcher3/widget/view/WidgetPageLayout;
    :cond_4
    const-string v10, "WidgetPagedView"

    const-string v11, "can not find the anchorview"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v9

    .line 567
    goto :goto_0
.end method

.method public abstract getColumnCount()I
.end method

.method protected getCurrentPageDescription()Ljava/lang/String;
    .locals 5

    .prologue
    .line 304
    const v0, 0x7f08001f

    .line 305
    .local v0, "stringId":I
    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetPagedView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetPagedView;->getNextPage()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mNumWidgetPages:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getDisplayItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "idx"    # I

    .prologue
    .line 529
    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mDisplayWidgetItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-lt v0, p1, :cond_0

    .line 530
    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mDisplayWidgetItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 532
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDisplayItemCount()I
    .locals 1

    .prologue
    .line 525
    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mDisplayWidgetItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPageCacheSize()I
    .locals 1

    .prologue
    .line 476
    iget v0, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mPageCacheSize:I

    return v0
.end method

.method public abstract getRowCount()I
.end method

.method public getState()Lcom/android/launcher3/widget/controller/WidgetState$State;
    .locals 1

    .prologue
    .line 420
    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mListener:Lcom/android/launcher3/widget/view/WidgetPagedView$Listener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mListener:Lcom/android/launcher3/widget/view/WidgetPagedView$Listener;

    invoke-interface {v0}, Lcom/android/launcher3/widget/view/WidgetPagedView$Listener;->getState()Lcom/android/launcher3/widget/controller/WidgetState$State;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/launcher3/widget/controller/WidgetState$State;->NORMAL:Lcom/android/launcher3/widget/controller/WidgetState$State;

    goto :goto_0
.end method

.method public abstract getWidgetItemFolderViewId()I
.end method

.method public abstract getWidgetItemSingleViewId()I
.end method

.method public abstract getWidgetPageLayoutId()I
.end method

.method public handleKeyEvent(I)Z
    .locals 1
    .param p1, "keyCode"    # I

    .prologue
    .line 366
    const/4 v0, 0x0

    return v0
.end method

.method public invalidateWigetItems()V
    .locals 4

    .prologue
    .line 206
    iget-boolean v2, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mDragInProgress:Z

    if-eqz v2, :cond_1

    .line 219
    :cond_0
    :goto_0
    return-void

    .line 209
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetPagedView;->getPageIndicator()Lcom/android/launcher3/common/view/PageIndicator;

    move-result-object v1

    .line 210
    .local v1, "pageIndicator":Lcom/android/launcher3/common/view/PageIndicator;
    if-eqz v1, :cond_2

    .line 211
    invoke-virtual {v1}, Lcom/android/launcher3/common/view/PageIndicator;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 212
    .local v0, "lp2":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetPagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09008a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 214
    .end local v0    # "lp2":Landroid/widget/FrameLayout$LayoutParams;
    :cond_2
    invoke-direct {p0}, Lcom/android/launcher3/widget/view/WidgetPagedView;->runFilter()V

    .line 216
    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetPagedView;->isDataReady()Z

    move-result v2

    if-nez v2, :cond_0

    .line 217
    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetPagedView;->requestLayout()V

    goto :goto_0
.end method

.method protected isContentsRefreshable()Z
    .locals 1

    .prologue
    .line 481
    const/4 v0, 0x1

    return v0
.end method

.method public notifyChangeState(Lcom/android/launcher3/widget/controller/WidgetState$State;Lcom/android/launcher3/widget/controller/WidgetState$State;)V
    .locals 5
    .param p1, "toState"    # Lcom/android/launcher3/widget/controller/WidgetState$State;
    .param p2, "fromState"    # Lcom/android/launcher3/widget/controller/WidgetState$State;

    .prologue
    .line 385
    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetPagedView;->getCurrentPage()I

    move-result v2

    .line 386
    .local v2, "index":I
    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetPagedView;->getChildCount()I

    move-result v0

    .line 387
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 388
    invoke-virtual {p0, v1}, Lcom/android/launcher3/widget/view/WidgetPagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 389
    .local v3, "view":Landroid/view/View;
    instance-of v4, v3, Lcom/android/launcher3/widget/view/WidgetPageLayout;

    if-eqz v4, :cond_0

    .line 390
    check-cast v3, Lcom/android/launcher3/widget/view/WidgetPageLayout;

    .end local v3    # "view":Landroid/view/View;
    if-ne v2, v1, :cond_1

    const/4 v4, 0x1

    :goto_1
    invoke-virtual {v3, p1, v4}, Lcom/android/launcher3/widget/view/WidgetPageLayout;->changeState(Lcom/android/launcher3/widget/controller/WidgetState$State;Z)V

    .line 387
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 390
    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .line 393
    :cond_2
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 242
    instance-of v0, p1, Lcom/android/launcher3/widget/view/WidgetItemView;

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mListener:Lcom/android/launcher3/widget/view/WidgetPagedView$Listener;

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mListener:Lcom/android/launcher3/widget/view/WidgetPagedView$Listener;

    invoke-interface {v0, p1}, Lcom/android/launcher3/widget/view/WidgetPagedView$Listener;->onWidgetItemClick(Landroid/view/View;)V

    .line 247
    :cond_0
    return-void
.end method

.method public onConfigurationChangedIfNeeded()V
    .locals 0

    .prologue
    .line 536
    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetPagedView;->invalidatePageData()V

    .line 537
    return-void
.end method

.method protected onDataReady(II)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 181
    invoke-direct {p0}, Lcom/android/launcher3/widget/view/WidgetPagedView;->updatePageCounts()V

    .line 183
    const-string v1, "WidgetPagedView"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDataReady done, mWidgetItems = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mWidgetItems:Ljava/util/List;

    if-nez v0, :cond_0

    const-string v0, "null"

    .line 184
    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 183
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetPagedView;->getCurrentPage()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/widget/view/WidgetPagedView;->runFilter(IZ)V

    .line 187
    return-void

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mWidgetItems:Ljava/util/List;

    .line 184
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 318
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 326
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/android/launcher3/common/base/view/PagedView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 320
    :pswitch_0
    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mListener:Lcom/android/launcher3/widget/view/WidgetPagedView$Listener;

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mListener:Lcom/android/launcher3/widget/view/WidgetPagedView$Listener;

    invoke-interface {v0}, Lcom/android/launcher3/widget/view/WidgetPagedView$Listener;->onPagedViewTouchIntercepted()V

    goto :goto_0

    .line 318
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onLauncherTransitionEnd(Lcom/android/launcher3/Launcher;ZZLcom/android/launcher3/common/stage/StageEntry;)V
    .locals 0
    .param p1, "l"    # Lcom/android/launcher3/Launcher;
    .param p2, "animated"    # Z
    .param p3, "toWorkspace"    # Z
    .param p4, "data"    # Lcom/android/launcher3/common/stage/StageEntry;

    .prologue
    .line 456
    return-void
.end method

.method public onLauncherTransitionPrepare(Lcom/android/launcher3/Launcher;ZZLcom/android/launcher3/common/stage/StageEntry;)V
    .locals 0
    .param p1, "l"    # Lcom/android/launcher3/Launcher;
    .param p2, "animated"    # Z
    .param p3, "toWorkspace"    # Z
    .param p4, "data"    # Lcom/android/launcher3/common/stage/StageEntry;

    .prologue
    .line 446
    return-void
.end method

.method public onLauncherTransitionStart(Lcom/android/launcher3/Launcher;ZZLcom/android/launcher3/common/stage/StageEntry;)V
    .locals 0
    .param p1, "l"    # Lcom/android/launcher3/Launcher;
    .param p2, "animated"    # Z
    .param p3, "toWorkspace"    # Z
    .param p4, "data"    # Lcom/android/launcher3/common/stage/StageEntry;

    .prologue
    .line 451
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 466
    instance-of v0, p1, Lcom/android/launcher3/widget/view/WidgetItemView;

    if-eqz v0, :cond_0

    .line 467
    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mListener:Lcom/android/launcher3/widget/view/WidgetPagedView$Listener;

    if-eqz v0, :cond_0

    .line 468
    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mListener:Lcom/android/launcher3/widget/view/WidgetPagedView$Listener;

    invoke-interface {v0, p1}, Lcom/android/launcher3/widget/view/WidgetPagedView$Listener;->onWidgetItemLongClick(Landroid/view/View;)Z

    move-result v0

    .line 471
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 192
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 193
    .local v1, "width":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 195
    .local v0, "height":I
    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetPagedView;->isDataReady()Z

    move-result v2

    if-nez v2, :cond_0

    .line 196
    iget-object v2, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mWidgetItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 197
    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetPagedView;->setDataReady()V

    .line 198
    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/widget/view/WidgetPagedView;->setMeasuredDimension(II)V

    .line 199
    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/widget/view/WidgetPagedView;->onDataReady(II)V

    .line 202
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/common/base/view/PagedView;->onMeasure(II)V

    .line 203
    return-void
.end method

.method protected onPageBeginMoving()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 310
    invoke-virtual {p0, v2}, Lcom/android/launcher3/widget/view/WidgetPagedView;->updateChildrenLayersEnabled(Z)V

    .line 311
    const/16 v0, 0x80

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/widget/view/WidgetPagedView;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    .line 312
    invoke-virtual {p0, v2}, Lcom/android/launcher3/widget/view/WidgetPagedView;->setAccessibilityFocusChange(Z)V

    .line 313
    invoke-super {p0}, Lcom/android/launcher3/common/base/view/PagedView;->onPageBeginMoving()V

    .line 314
    return-void
.end method

.method protected onPageEndMoving()V
    .locals 1

    .prologue
    .line 297
    invoke-super {p0}, Lcom/android/launcher3/common/base/view/PagedView;->onPageEndMoving()V

    .line 298
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/view/WidgetPagedView;->updateChildrenLayersEnabled(Z)V

    .line 299
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/view/WidgetPagedView;->setAccessibilityFocusChange(Z)V

    .line 300
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 1
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 355
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/common/base/view/PagedView;->onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 461
    const/4 v0, 0x0

    return v0
.end method

.method protected onUnhandledTap(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 173
    return-void
.end method

.method public prepareInOut(IZ)V
    .locals 4
    .param p1, "level"    # I
    .param p2, "invalidate"    # Z

    .prologue
    const/4 v2, 0x1

    .line 330
    iget v0, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mPageCacheSize:I

    .line 331
    .local v0, "cacheSize":I
    if-ne p1, v2, :cond_0

    .line 332
    if-eqz p2, :cond_0

    .line 333
    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetPagedView;->invalidateWigetItems()V

    .line 336
    :cond_0
    if-ne p1, v2, :cond_2

    const/4 v1, 0x3

    :goto_0
    iput v1, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mPageCacheSize:I

    .line 337
    iget v1, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mPageCacheSize:I

    if-eq v0, v1, :cond_1

    .line 338
    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetPagedView;->getCurrentPage()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/widget/view/WidgetPagedView;->loadAssociatedPages(I)V

    .line 339
    iget v1, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mPageCacheSize:I

    if-ne v1, v2, :cond_1

    .line 340
    iget-object v1, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mItemViewPool:Lcom/android/launcher3/widget/view/WidgetPagedView$ItemViewPool;

    invoke-virtual {v1}, Lcom/android/launcher3/widget/view/WidgetPagedView$ItemViewPool;->clear()V

    .line 343
    :cond_1
    const-string v1, "WidgetPagedView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "prepareInOut items : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mWidgetItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    return-void

    :cond_2
    move v1, v2

    .line 336
    goto :goto_0
.end method

.method protected setAccessibilityFocusChange(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 347
    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetPagedView;->getNextPage()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/widget/view/WidgetPagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/view/WidgetPageLayout;

    .line 348
    .local v0, "layout":Lcom/android/launcher3/widget/view/WidgetPageLayout;
    if-eqz v0, :cond_0

    .line 349
    invoke-virtual {v0, p1}, Lcom/android/launcher3/widget/view/WidgetPageLayout;->setAccessibilityEnabled(Z)V

    .line 350
    :cond_0
    return-void
.end method

.method public setListener(Lcom/android/launcher3/widget/view/WidgetPagedView$Listener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/launcher3/widget/view/WidgetPagedView$Listener;

    .prologue
    .line 163
    iput-object p1, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mListener:Lcom/android/launcher3/widget/view/WidgetPagedView$Listener;

    .line 164
    return-void
.end method

.method public setSearchFilter(Lcom/android/launcher3/widget/view/WidgetPagedView$Filter;)V
    .locals 0
    .param p1, "filter"    # Lcom/android/launcher3/widget/view/WidgetPagedView$Filter;

    .prologue
    .line 429
    iput-object p1, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mFilter:Lcom/android/launcher3/widget/view/WidgetPagedView$Filter;

    .line 430
    return-void
.end method

.method public setSearchString(Ljava/lang/String;)V
    .locals 0
    .param p1, "searchString"    # Ljava/lang/String;

    .prologue
    .line 440
    iput-object p1, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mFilterString:Ljava/lang/String;

    .line 441
    return-void
.end method

.method public setWidgetItems(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 167
    .local p1, "widgets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mWidgetItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 168
    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mWidgetItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 169
    return-void
.end method

.method public snapToPageSALoggging(Z)V
    .locals 8
    .param p1, "isPageIndicator"    # Z

    .prologue
    .line 635
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 636
    .local v0, "method":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetPagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 637
    .local v1, "res":Landroid/content/res/Resources;
    instance-of v2, p0, Lcom/android/launcher3/widget/view/WidgetFolderPagedView;

    if-eqz v2, :cond_1

    .line 638
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v2

    const v3, 0x7f080191

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0800f8

    .line 639
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    int-to-long v6, v0

    .line 638
    invoke-virtual {v2, v3, v4, v6, v7}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    .line 645
    :goto_1
    return-void

    .line 635
    .end local v0    # "method":I
    .end local v1    # "res":Landroid/content/res/Resources;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 641
    .restart local v0    # "method":I
    .restart local v1    # "res":Landroid/content/res/Resources;
    :cond_1
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v2

    const v3, 0x7f080192

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0800f7

    .line 642
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    int-to-long v6, v0

    .line 641
    invoke-virtual {v2, v3, v4, v6, v7}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_1
.end method

.method public syncPageItems(IZ)V
    .locals 0
    .param p1, "page"    # I
    .param p2, "immediate"    # Z

    .prologue
    .line 265
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/widget/view/WidgetPagedView;->syncWidgetPageItems(IZ)V

    .line 266
    return-void
.end method

.method protected syncPages()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 251
    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetPagedView;->removeAllViews()V

    .line 253
    iget-object v4, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mListener:Lcom/android/launcher3/widget/view/WidgetPagedView$Listener;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mListener:Lcom/android/launcher3/widget/view/WidgetPagedView$Listener;

    invoke-interface {v4}, Lcom/android/launcher3/widget/view/WidgetPagedView$Listener;->isWhiteWallpaper()Z

    move-result v2

    .line 254
    .local v2, "whiteWallpaper":Z
    :goto_0
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_1
    iget v4, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mNumWidgetPages:I

    if-ge v0, v4, :cond_1

    .line 255
    iget-object v4, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetPagedView;->getWidgetPageLayoutId()I

    move-result v5

    invoke-virtual {v4, v5, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/widget/view/WidgetPageLayout;

    .line 256
    .local v1, "layout":Lcom/android/launcher3/widget/view/WidgetPageLayout;
    iget-object v4, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mItemViewPool:Lcom/android/launcher3/widget/view/WidgetPagedView$ItemViewPool;

    invoke-virtual {v1, v4}, Lcom/android/launcher3/widget/view/WidgetPageLayout;->setViewRecycler(Lcom/android/launcher3/widget/view/ViewRecycler;)V

    .line 257
    iget-object v4, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mItemOnKeyListener:Lcom/android/launcher3/widget/controller/WidgetFocusHelper$WidgetItemKeyListener;

    invoke-virtual {v1, v4}, Lcom/android/launcher3/widget/view/WidgetPageLayout;->setItemOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 258
    invoke-virtual {v1, v2}, Lcom/android/launcher3/widget/view/WidgetPageLayout;->changeColorForBg(Z)V

    .line 259
    invoke-virtual {p0, v1}, Lcom/android/launcher3/widget/view/WidgetPagedView;->addView(Landroid/view/View;)V

    .line 254
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0    # "j":I
    .end local v1    # "layout":Lcom/android/launcher3/widget/view/WidgetPageLayout;
    .end local v2    # "whiteWallpaper":Z
    :cond_0
    move v2, v3

    .line 253
    goto :goto_0

    .line 261
    .restart local v0    # "j":I
    .restart local v2    # "whiteWallpaper":Z
    :cond_1
    return-void
.end method

.method public updateCellSpan()V
    .locals 4

    .prologue
    .line 410
    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetPagedView;->getChildCount()I

    move-result v0

    .line 411
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 412
    invoke-virtual {p0, v1}, Lcom/android/launcher3/widget/view/WidgetPagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 413
    .local v2, "view":Landroid/view/View;
    instance-of v3, v2, Lcom/android/launcher3/widget/view/WidgetPageLayout;

    if-eqz v3, :cond_0

    .line 414
    check-cast v2, Lcom/android/launcher3/widget/view/WidgetPageLayout;

    .end local v2    # "view":Landroid/view/View;
    invoke-virtual {v2}, Lcom/android/launcher3/widget/view/WidgetPageLayout;->updateCellSpan()V

    .line 411
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 417
    :cond_1
    return-void
.end method

.method public updateChildrenLayersEnabled(Z)V
    .locals 5
    .param p1, "force"    # Z

    .prologue
    const/4 v3, 0x0

    .line 485
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetPagedView;->isPageMoving()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 487
    .local v0, "enableChildrenLayers":Z
    :goto_0
    iget-boolean v4, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mChildrenLayersEnabled:Z

    if-eq v0, v4, :cond_1

    .line 488
    iput-boolean v0, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mChildrenLayersEnabled:Z

    .line 489
    iget-boolean v4, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mChildrenLayersEnabled:Z

    if-eqz v4, :cond_3

    .line 490
    invoke-direct {p0}, Lcom/android/launcher3/widget/view/WidgetPagedView;->enableHwLayersOnVisiblePages()V

    .line 498
    :cond_1
    return-void

    .end local v0    # "enableChildrenLayers":Z
    :cond_2
    move v0, v3

    .line 485
    goto :goto_0

    .line 492
    .restart local v0    # "enableChildrenLayers":Z
    :cond_3
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetPagedView;->getPageCount()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 493
    invoke-virtual {p0, v1}, Lcom/android/launcher3/widget/view/WidgetPagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/widget/view/WidgetPageLayout;

    .line 494
    .local v2, "layout":Lcom/android/launcher3/widget/view/WidgetPageLayout;
    invoke-virtual {v2, v3}, Lcom/android/launcher3/widget/view/WidgetPageLayout;->enableHardwareLayers(Z)V

    .line 492
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method
