.class Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "LocaleDragAndDropAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$AdapterCallback;,
        Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$CustomViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$CustomViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mAdapterCallback:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$AdapterCallback;

.field private mBooster:Lcom/samsung/android/settings/utils/Booster;

.field private final mContext:Landroid/content/Context;

.field private mDragEnabled:Z

.field private final mFeedItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mItemTouchHelper:Landroid/support/v7/widget/helper/ItemTouchHelper;

.field private mLocalesSetLast:Landroid/os/LocaleList;

.field private mLocalesToSetNext:Landroid/os/LocaleList;

.field private mNumberFormatter:Ljava/text/NumberFormat;

.field private mParentView:Landroid/support/v7/widget/RecyclerView;

.field private mRemoveMode:Z

.field private mTempListSetLast:Landroid/os/LocaleList;


# direct methods
.method static synthetic -get0(Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;)Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$AdapterCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mAdapterCallback:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$AdapterCallback;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mDragEnabled:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;)Landroid/support/v7/widget/helper/ItemTouchHelper;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mItemTouchHelper:Landroid/support/v7/widget/helper/ItemTouchHelper;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;)Landroid/os/LocaleList;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mLocalesSetLast:Landroid/os/LocaleList;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;)Landroid/os/LocaleList;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mLocalesToSetNext:Landroid/os/LocaleList;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mRemoveMode:Z

    return v0
.end method

.method static synthetic -get7(Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;)Landroid/os/LocaleList;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mTempListSetLast:Landroid/os/LocaleList;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;Landroid/os/LocaleList;)Landroid/os/LocaleList;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mLocalesSetLast:Landroid/os/LocaleList;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;Landroid/os/LocaleList;)Landroid/os/LocaleList;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mLocalesToSetNext:Landroid/os/LocaleList;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;Ljava/text/NumberFormat;)Ljava/text/NumberFormat;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mNumberFormatter:Ljava/text/NumberFormat;

    return-object p1
.end method

.method static synthetic -set3(Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;Landroid/os/LocaleList;)Landroid/os/LocaleList;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mTempListSetLast:Landroid/os/LocaleList;

    return-object p1
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "feedItemList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/LocaleStore$LocaleInfo;>;"
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 96
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 55
    iput-object v2, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mParentView:Landroid/support/v7/widget/RecyclerView;

    .line 56
    iput-boolean v4, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mRemoveMode:Z

    .line 57
    iput-boolean v3, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mDragEnabled:Z

    .line 58
    invoke-static {}, Ljava/text/NumberFormat;->getNumberInstance()Ljava/text/NumberFormat;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mNumberFormatter:Ljava/text/NumberFormat;

    .line 59
    iput-object v2, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mTempListSetLast:Landroid/os/LocaleList;

    .line 63
    iput-object v2, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mLocalesToSetNext:Landroid/os/LocaleList;

    .line 64
    iput-object v2, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mLocalesSetLast:Landroid/os/LocaleList;

    .line 97
    iput-object p2, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    .line 99
    iput-object p1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mContext:Landroid/content/Context;

    .line 101
    const/high16 v1, 0x41000000    # 8.0f

    .line 102
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 101
    invoke-static {v3, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    .line 103
    .local v0, "dragElevation":F
    new-instance v1, Lcom/samsung/android/settings/utils/Booster;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/settings/utils/Booster;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mBooster:Lcom/samsung/android/settings/utils/Booster;

    .line 105
    iget-object v1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 106
    const-string/jumbo v1, "LocaleDragAndDropAdapter"

    const-string/jumbo v2, "init localeList"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object v1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->getLocaleList(Ljava/util/List;)Landroid/os/LocaleList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mLocalesToSetNext:Landroid/os/LocaleList;

    .line 110
    :cond_0
    new-instance v1, Landroid/support/v7/widget/helper/ItemTouchHelper;

    new-instance v2, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$1;

    .line 111
    const/4 v3, 0x3

    .line 110
    invoke-direct {v2, p0, v3, v4, v0}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$1;-><init>(Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;IIF)V

    invoke-direct {v1, v2}, Landroid/support/v7/widget/helper/ItemTouchHelper;-><init>(Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;)V

    iput-object v1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mItemTouchHelper:Landroid/support/v7/widget/helper/ItemTouchHelper;

    .line 96
    return-void
.end method

.method private getLocaleList(Ljava/util/List;)Landroid/os/LocaleList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;)",
            "Landroid/os/LocaleList;"
        }
    .end annotation

    .prologue
    .line 170
    .local p1, "localeInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/LocaleStore$LocaleInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 171
    .local v0, "count":I
    new-array v3, v0, [Ljava/util/Locale;

    .line 173
    .local v3, "newList":[Ljava/util/Locale;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 174
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .line 175
    .local v2, "li":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    invoke-virtual {v2}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v4

    aput-object v4, v3, v1

    .line 176
    const-string/jumbo v4, "LocaleDragAndDropAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "lang["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "]="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getFullNameNative()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 179
    .end local v2    # "li":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    :cond_0
    new-instance v4, Landroid/os/LocaleList;

    invoke-direct {v4, v3}, Landroid/os/LocaleList;-><init>([Ljava/util/Locale;)V

    return-object v4
.end method

.method private setDragEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 376
    iput-boolean p1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mDragEnabled:Z

    .line 375
    return-void
.end method


# virtual methods
.method addLocale(Lcom/android/internal/app/LocaleStore$LocaleInfo;)V
    .locals 1
    .param p1, "li"    # Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .prologue
    .line 333
    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 334
    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->notifyItemInserted(I)V

    .line 336
    invoke-virtual {p0}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->doTheUpdate()V

    .line 332
    return-void
.end method

.method public doTheUpdate()V
    .locals 2

    .prologue
    .line 340
    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mBooster:Lcom/samsung/android/settings/utils/Booster;

    const/16 v1, 0x7d0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/utils/Booster;->start(I)V

    .line 342
    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->getLocaleList(Ljava/util/List;)Landroid/os/LocaleList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->updateLocalesWhenAnimationStops(Landroid/os/LocaleList;)V

    .line 339
    return-void
.end method

.method getCheckedCount()I
    .locals 4

    .prologue
    .line 314
    const/4 v2, 0x0

    .line 315
    .local v2, "result":I
    iget-object v3, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "li$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .line 316
    .local v0, "li":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    invoke-virtual {v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 317
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 320
    .end local v0    # "li":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    :cond_1
    return v2
.end method

.method public getItemCount()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 243
    iget-object v2, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 244
    .local v0, "itemCount":I
    :goto_0
    const/4 v2, 0x2

    if-lt v0, v2, :cond_1

    iget-boolean v2, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mRemoveMode:Z

    if-eqz v2, :cond_1

    .line 247
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->setDragEnabled(Z)V

    .line 249
    :goto_1
    return v0

    .end local v0    # "itemCount":I
    :cond_0
    move v0, v1

    .line 243
    goto :goto_0

    .line 245
    .restart local v0    # "itemCount":I
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->setDragEnabled(Z)V

    goto :goto_1
.end method

.method isRemoveMode()Z
    .locals 1

    .prologue
    .line 285
    iget-boolean v0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mRemoveMode:Z

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "i"    # I

    .prologue
    .line 203
    check-cast p1, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$CustomViewHolder;

    .end local p1    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->onBindViewHolder(Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$CustomViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$CustomViewHolder;I)V
    .locals 8
    .param p1, "holder"    # Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$CustomViewHolder;
    .param p2, "i"    # I

    .prologue
    const/4 v5, 0x0

    .line 204
    iget-object v4, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .line 205
    .local v2, "feedItem":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    invoke-virtual {p1}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$CustomViewHolder;->getLocaleDragCell()Lcom/android/settings/localepicker/LocaleDragCell;

    move-result-object v1

    .line 206
    .local v1, "dragCell":Lcom/android/settings/localepicker/LocaleDragCell;
    invoke-virtual {v2}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getFullNameNative()Ljava/lang/String;

    move-result-object v3

    .line 207
    .local v3, "label":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getFullNameInUiLanguage()Ljava/lang/String;

    move-result-object v0

    .line 208
    .local v0, "description":Ljava/lang/String;
    invoke-virtual {v1, v3, v0}, Lcom/android/settings/localepicker/LocaleDragCell;->setLabelAndDescription(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    invoke-virtual {v2}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->isTranslated()Z

    move-result v4

    invoke-virtual {v1, v4}, Lcom/android/settings/localepicker/LocaleDragCell;->setLocalized(Z)V

    .line 210
    iget-object v4, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mNumberFormatter:Ljava/text/NumberFormat;

    add-int/lit8 v6, p2, 0x1

    int-to-long v6, v6

    invoke-virtual {v4, v6, v7}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/settings/localepicker/LocaleDragCell;->setMiniLabel(Ljava/lang/String;)V

    .line 211
    iget-boolean v4, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mRemoveMode:Z

    invoke-virtual {v1, v4}, Lcom/android/settings/localepicker/LocaleDragCell;->setShowCheckbox(Z)V

    .line 212
    iget-boolean v4, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mRemoveMode:Z

    if-eqz v4, :cond_1

    move v4, v5

    :goto_0
    invoke-virtual {v1, v4}, Lcom/android/settings/localepicker/LocaleDragCell;->setShowMiniLabel(Z)V

    .line 213
    iget-boolean v4, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mRemoveMode:Z

    if-eqz v4, :cond_2

    iget-boolean v4, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mDragEnabled:Z

    :goto_1
    invoke-virtual {v1, v4}, Lcom/android/settings/localepicker/LocaleDragCell;->setShowHandle(Z)V

    .line 214
    iget-boolean v4, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mRemoveMode:Z

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getChecked()Z

    move-result v5

    :cond_0
    invoke-virtual {v1, v5}, Lcom/android/settings/localepicker/LocaleDragCell;->setChecked(Z)V

    .line 215
    invoke-virtual {v1, v2}, Lcom/android/settings/localepicker/LocaleDragCell;->setTag(Ljava/lang/Object;)V

    .line 228
    invoke-virtual {v1}, Lcom/android/settings/localepicker/LocaleDragCell;->getCheckbox()Landroid/widget/CheckBox;

    move-result-object v4

    .line 229
    new-instance v5, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$2;

    invoke-direct {v5, p0, v1}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$2;-><init>(Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;Lcom/android/settings/localepicker/LocaleDragCell;)V

    .line 228
    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    return-void

    .line 212
    :cond_1
    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    move v4, v5

    .line 213
    goto :goto_1
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .param p2, "i"    # I

    .prologue
    .line 196
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$CustomViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$CustomViewHolder;
    .locals 4
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .param p2, "i"    # I

    .prologue
    .line 197
    iget-object v1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 198
    const v2, 0x7f040162

    const/4 v3, 0x0

    .line 197
    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/localepicker/LocaleDragCell;

    .line 199
    .local v0, "item":Lcom/android/settings/localepicker/LocaleDragCell;
    new-instance v1, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$CustomViewHolder;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$CustomViewHolder;-><init>(Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;Lcom/android/settings/localepicker/LocaleDragCell;)V

    return-object v1
.end method

.method onItemMove(II)V
    .locals 7
    .param p1, "fromPosition"    # I
    .param p2, "toPosition"    # I

    .prologue
    const/4 v6, 0x0

    .line 253
    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    .line 254
    iget-object v1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .line 255
    .local v0, "saved":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    iget-object v1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 256
    iget-object v1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    invoke-interface {v1, p2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 263
    .end local v0    # "saved":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->notifyItemChanged(I)V

    .line 264
    invoke-virtual {p0, p2}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->notifyItemChanged(I)V

    .line 265
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->notifyItemMoved(II)V

    .line 252
    return-void

    .line 260
    :cond_0
    const-string/jumbo v1, "LocaleDragAndDropAdapter"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 261
    const-string/jumbo v3, "Negative position in onItemMove %d -> %d"

    .line 260
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 261
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    .line 260
    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public refreshList()V
    .locals 2

    .prologue
    .line 417
    iget-object v1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mParentView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getItemAnimator()Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    .line 418
    .local v0, "itemAnimator":Landroid/support/v7/widget/RecyclerView$ItemAnimator;
    new-instance v1, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$4;

    invoke-direct {v1, p0}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$4;-><init>(Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->isRunning(Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;)Z

    .line 416
    return-void
.end method

.method removeChecked()V
    .locals 3

    .prologue
    .line 301
    iget-object v2, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 302
    .local v1, "itemCount":I
    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 303
    iget-object v2, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    invoke-virtual {v2}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 304
    iget-object v2, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 302
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 307
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->notifyDataSetChanged()V

    .line 300
    return-void
.end method

.method removeItem(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 289
    iget-object v1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 290
    .local v0, "itemCount":I
    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    .line 291
    return-void

    .line 293
    :cond_0
    if-ltz p1, :cond_1

    if-lt p1, v0, :cond_2

    .line 294
    :cond_1
    return-void

    .line 296
    :cond_2
    iget-object v1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 297
    invoke-virtual {p0}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->notifyDataSetChanged()V

    .line 288
    return-void
.end method

.method public restoreState(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 402
    if-eqz p1, :cond_3

    iget-boolean v3, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mRemoveMode:Z

    if-eqz v3, :cond_3

    .line 404
    const-string/jumbo v3, "selectedLocales"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 405
    .local v2, "selectedLocales":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 406
    :cond_0
    return-void

    .line 408
    :cond_1
    iget-object v3, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "li$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .line 409
    .local v0, "li":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    invoke-virtual {v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->setChecked(Z)V

    goto :goto_0

    .line 411
    .end local v0    # "li":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    :cond_2
    iget-object v3, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p0, v4, v3}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->notifyItemRangeChanged(II)V

    .line 401
    .end local v1    # "li$iterator":Ljava/util/Iterator;
    .end local v2    # "selectedLocales":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    return-void
.end method

.method public saveState(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "outInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 385
    if-eqz p1, :cond_2

    .line 386
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 387
    .local v2, "selectedLocales":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "li$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .line 388
    .local v0, "li":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    invoke-virtual {v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 389
    invoke-virtual {v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 392
    .end local v0    # "li":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    :cond_1
    const-string/jumbo v3, "selectedLocales"

    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 384
    .end local v1    # "li$iterator":Ljava/util/Iterator;
    .end local v2    # "selectedLocales":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    return-void
.end method

.method public setCallbackListener(Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$AdapterCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$AdapterCallback;

    .prologue
    .line 183
    iput-object p1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mAdapterCallback:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$AdapterCallback;

    .line 182
    return-void
.end method

.method public setRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 2
    .param p1, "rv"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    .line 187
    iput-object p1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mParentView:Landroid/support/v7/widget/RecyclerView;

    .line 188
    iget-object v1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mParentView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getItemAnimator()Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    .line 189
    .local v0, "itemAnimator":Landroid/support/v7/widget/RecyclerView$ItemAnimator;
    instance-of v1, v0, Landroid/support/v7/widget/SimpleItemAnimator;

    if-eqz v1, :cond_0

    .line 190
    check-cast v0, Landroid/support/v7/widget/SimpleItemAnimator;

    .end local v0    # "itemAnimator":Landroid/support/v7/widget/RecyclerView$ItemAnimator;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 192
    :cond_0
    iget-object v1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mItemTouchHelper:Landroid/support/v7/widget/helper/ItemTouchHelper;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/helper/ItemTouchHelper;->attachToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 186
    return-void
.end method

.method setRemoveMode(Z)V
    .locals 4
    .param p1, "removeMode"    # Z

    .prologue
    .line 271
    iput-boolean p1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mRemoveMode:Z

    .line 272
    iget-object v2, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 273
    .local v1, "itemCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 274
    iget-object v2, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->setChecked(Z)V

    .line 275
    invoke-virtual {p0, v0}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->notifyItemChanged(I)V

    .line 273
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 280
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->doTheUpdate()V

    .line 270
    return-void
.end method

.method public updateLocalesWhenAnimationStops(Landroid/os/LocaleList;)V
    .locals 3
    .param p1, "localeList"    # Landroid/os/LocaleList;

    .prologue
    .line 347
    iget-object v1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mLocalesToSetNext:Landroid/os/LocaleList;

    invoke-virtual {p1, v1}, Landroid/os/LocaleList;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 348
    const-string/jumbo v1, "LocaleDragAndDropAdapter"

    const-string/jumbo v2, "New lang list have not changed."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    return-void

    .line 354
    :cond_0
    invoke-static {p1}, Landroid/os/LocaleList;->setDefault(Landroid/os/LocaleList;)V

    .line 356
    iput-object p1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mLocalesToSetNext:Landroid/os/LocaleList;

    .line 357
    iget-object v1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mParentView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getItemAnimator()Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    .line 358
    .local v0, "itemAnimator":Landroid/support/v7/widget/RecyclerView$ItemAnimator;
    new-instance v1, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$3;

    invoke-direct {v1, p0}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$3;-><init>(Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->isRunning(Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;)Z

    .line 346
    return-void
.end method
