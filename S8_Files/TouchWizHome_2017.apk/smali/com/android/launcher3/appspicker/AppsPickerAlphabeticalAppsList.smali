.class public Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;
.super Lcom/android/launcher3/allapps/AlphabeticalAppsList;
.source "AppsPickerAlphabeticalAppsList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList$PositionInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAppsPositionInfoMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList$PositionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mHiddenApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/IconInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mLastOrderedFilter:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/util/ComponentKey;",
            ">;"
        }
    .end annotation
.end field

.field private mNumAppsPerRow:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;-><init>(Landroid/content/Context;)V

    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 45
    .local v0, "res":Landroid/content/res/Resources;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->mHiddenApps:Ljava/util/ArrayList;

    .line 46
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->mAppsPositionInfoMap:Ljava/util/HashMap;

    .line 47
    const/high16 v1, 0x7f0b0000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->mNumAppsPerRow:I

    .line 48
    return-void
.end method

.method private filterHiddenApps(Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/util/ComponentKey;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 85
    .local p1, "f":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/util/ComponentKey;>;"
    iget-object v3, p0, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->mHiddenApps:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 86
    .local v1, "info":Lcom/android/launcher3/common/base/item/IconInfo;
    invoke-virtual {v1}, Lcom/android/launcher3/common/base/item/IconInfo;->toComponentKey()Lcom/android/launcher3/util/ComponentKey;

    move-result-object v0

    .line 87
    .local v0, "hiddenAppKey":Lcom/android/launcher3/util/ComponentKey;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/util/ComponentKey;

    .line 88
    .local v2, "key":Lcom/android/launcher3/util/ComponentKey;
    invoke-virtual {v0, v2}, Lcom/android/launcher3/util/ComponentKey;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 89
    sget-object v4, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "filterHiddenApps : filter "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/android/launcher3/common/base/item/IconInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 95
    .end local v0    # "hiddenAppKey":Lcom/android/launcher3/util/ComponentKey;
    .end local v1    # "info":Lcom/android/launcher3/common/base/item/IconInfo;
    .end local v2    # "key":Lcom/android/launcher3/util/ComponentKey;
    :cond_2
    return-void
.end method


# virtual methods
.method public getAppsMapSize()I
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->mAppsPositionInfoMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

.method public getNumAppsPerRow()I
    .locals 1

    .prologue
    .line 144
    iget v0, p0, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->mNumAppsPerRow:I

    return v0
.end method

.method public getNumAppsToShow()I
    .locals 2

    .prologue
    .line 98
    invoke-super {p0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->mHiddenApps:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public getRowItems(I)Ljava/util/List;
    .locals 7
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 125
    sget-object v4, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getAdapterItems size : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->getAdapterItems()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " Position : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " rowItems Start : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v2, p0, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->mAppsPositionInfoMap:Ljava/util/HashMap;

    .line 127
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList$PositionInfo;

    iget v2, v2, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList$PositionInfo;->mStart:I

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " rowItems End : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v2, p0, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->mAppsPositionInfoMap:Ljava/util/HashMap;

    .line 128
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList$PositionInfo;

    iget v2, v2, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList$PositionInfo;->mEnd:I

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 125
    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    invoke-virtual {p0}, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->getAdapterItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 130
    .local v0, "adapterItemSize":I
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportGalaxyAppsSearch()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    if-gt v0, v2, :cond_0

    move-object v2, v3

    .line 139
    :goto_0
    return-object v2

    .line 135
    :cond_0
    iget-object v2, p0, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->mAppsPositionInfoMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList$PositionInfo;

    .line 136
    .local v1, "info":Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList$PositionInfo;
    if-eqz v1, :cond_1

    iget v2, v1, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList$PositionInfo;->mEnd:I

    if-gt v2, v0, :cond_1

    .line 137
    invoke-virtual {p0}, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->getAdapterItems()Ljava/util/List;

    move-result-object v2

    iget v3, v1, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList$PositionInfo;->mStart:I

    iget v4, v1, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList$PositionInfo;->mEnd:I

    invoke-interface {v2, v3, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, v3

    .line 139
    goto :goto_0
.end method

.method public getSearchedRowItems(I)Ljava/util/List;
    .locals 3
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 116
    iget v1, p0, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->mNumAppsPerRow:I

    mul-int v0, p1, v1

    .line 117
    .local v0, "row":I
    iget v1, p0, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->mNumAppsPerRow:I

    add-int/2addr v1, v0

    invoke-virtual {p0}, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->getAdapterItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 118
    invoke-virtual {p0}, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->getAdapterItems()Ljava/util/List;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->mNumAppsPerRow:I

    add-int/2addr v2, v0

    invoke-interface {v1, v0, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    .line 120
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hasFilter()Z
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x1

    return v0
.end method

.method public hasNoFilteredResults()Z
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    return v0
.end method

.method public initAppPositionInfoMap()V
    .locals 10

    .prologue
    .line 152
    sget-object v7, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "initAppPositionInfoMap : AdapterItems size = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->getAdapterItems()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    const/4 v0, 0x0

    .line 155
    .local v0, "appsSize":I
    const/4 v6, 0x0

    .line 156
    .local v6, "startIndex":I
    const/4 v2, 0x0

    .line 157
    .local v2, "endIndex":I
    const/4 v5, 0x0

    .line 158
    .local v5, "rowIndex":I
    const/4 v4, 0x4

    .line 160
    .local v4, "mNumAppsPerRow":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->getAdapterItems()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v3, v7, :cond_1

    .line 161
    invoke-virtual {p0}, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->getAdapterItems()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    iget v7, v7, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->appIndex:I

    if-ltz v7, :cond_0

    .line 162
    add-int/lit8 v0, v0, 0x1

    .line 160
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 166
    :cond_1
    if-lez v0, :cond_3

    .line 167
    invoke-virtual {p0}, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->getAdapterItems()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    iget-object v7, v7, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->sectionName:Ljava/lang/String;

    if-eqz v7, :cond_3

    .line 168
    invoke-virtual {p0}, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->getAdapterItems()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    iget-object v1, v7, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->sectionName:Ljava/lang/String;

    .line 169
    .local v1, "compName":Ljava/lang/String;
    move v2, v6

    :goto_1
    add-int v7, v6, v4

    if-ge v2, v7, :cond_2

    .line 170
    if-ge v2, v0, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->getAdapterItems()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    iget-object v7, v7, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->sectionName:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 174
    :cond_2
    iget-object v7, p0, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->mAppsPositionInfoMap:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v9, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList$PositionInfo;

    invoke-direct {v9, v6, v2}, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList$PositionInfo;-><init>(II)V

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    move v6, v2

    .line 176
    add-int/lit8 v5, v5, 0x1

    .line 177
    if-lt v6, v0, :cond_1

    .line 184
    .end local v1    # "compName":Ljava/lang/String;
    :cond_3
    return-void

    .line 169
    .restart local v1    # "compName":Ljava/lang/String;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public resetMap()V
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->mAppsPositionInfoMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 149
    return-void
.end method

.method public setHiddenApps(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/common/base/item/IconInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 51
    .local p1, "apps":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    iget-object v0, p0, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->mHiddenApps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 52
    iget-object v0, p0, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->mHiddenApps:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 53
    iget-object v0, p0, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->mLastOrderedFilter:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->setOrderedFilter(Ljava/util/ArrayList;)V

    .line 54
    return-void
.end method

.method public setOrderedFilter(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/util/ComponentKey;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 68
    .local p1, "f":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/util/ComponentKey;>;"
    iput-object p1, p0, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->mLastOrderedFilter:Ljava/util/ArrayList;

    .line 71
    if-nez p1, :cond_0

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 73
    .local v0, "filteredComponents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/util/ComponentKey;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->getApps()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 74
    .local v1, "info":Lcom/android/launcher3/common/base/item/IconInfo;
    invoke-virtual {v1}, Lcom/android/launcher3/common/base/item/IconInfo;->toComponentKey()Lcom/android/launcher3/util/ComponentKey;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 77
    .end local v0    # "filteredComponents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/util/ComponentKey;>;"
    .end local v1    # "info":Lcom/android/launcher3/common/base/item/IconInfo;
    :cond_0
    move-object v0, p1

    .line 80
    .restart local v0    # "filteredComponents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/util/ComponentKey;>;"
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->filterHiddenApps(Ljava/util/ArrayList;)V

    .line 81
    invoke-super {p0, v0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->setOrderedFilter(Ljava/util/ArrayList;)V

    .line 82
    return-void
.end method
