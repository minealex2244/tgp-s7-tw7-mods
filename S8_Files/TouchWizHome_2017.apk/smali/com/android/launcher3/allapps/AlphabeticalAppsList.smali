.class public Lcom/android/launcher3/allapps/AlphabeticalAppsList;
.super Ljava/lang/Object;
.source "AlphabeticalAppsList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/allapps/AlphabeticalAppsList$IncomingHandlerCallback;,
        Lcom/android/launcher3/allapps/AlphabeticalAppsList$MergeAlgorithm;,
        Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;,
        Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;,
        Lcom/android/launcher3/allapps/AlphabeticalAppsList$SectionInfo;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEBUG_PREDICTIONS:Z = false

.field private static final FAST_SCROLL_FRACTION_DISTRIBUTE_BY_NUM_SECTIONS:I = 0x1

.field private static final FAST_SCROLL_FRACTION_DISTRIBUTE_BY_ROWS_FRACTION:I = 0x0

.field private static final GALAXYAPPS:Ljava/lang/String; = "com.sec.android.app.samsungapps"

.field public static final NETWORK_NOT_CONNECTED:I = 0x5

.field private static final PLAYSTORE:Ljava/lang/String; = "com.android.vending"

.field public static final SEND_SEARCH_END:I = 0x2

.field public static final SEND_THREAD_INFORMATION:I = 0x1

.field public static final TAG:Ljava/lang/String; = "AlphabeticalAppsList"


# instance fields
.field called:I

.field private mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

.field private mAdapterItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;",
            ">;"
        }
    .end annotation
.end field

.field private mAppNameComparator:Lcom/android/launcher3/common/model/AppNameComparator;

.field private final mApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/common/base/item/IconInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCachedSectionNames:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mComponentToAppMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/launcher3/util/ComponentKey;",
            "Lcom/android/launcher3/common/base/item/IconInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mFastScrollDistributionMode:I

.field private mFastScrollerSections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mFilteredApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/common/base/item/IconInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mGalaxyItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/appssearch/ItemDetails;",
            ">;"
        }
    .end annotation
.end field

.field public mIncomingHandler:Landroid/os/Handler;

.field private mIndexer:Lcom/android/launcher3/common/compat/AlphabeticIndexCompat;

.field private mLauncher:Lcom/android/launcher3/Launcher;

.field private mMergeAlgorithm:Lcom/android/launcher3/allapps/AlphabeticalAppsList$MergeAlgorithm;

.field private mNumAppRowsInAdapter:I

.field private mNumAppsPerRow:I

.field private mNumPredictedAppsPerRow:I

.field private mPredictedAppComponents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/util/ComponentKey;",
            ">;"
        }
    .end annotation
.end field

.field private mPredictedApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/common/base/item/IconInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mRecentAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/IconInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mRecentApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/common/base/item/IconInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSearchResults:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/util/ComponentKey;",
            ">;"
        }
    .end annotation
.end field

.field private mSections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/allapps/AlphabeticalAppsList$SectionInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 291
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mFastScrollDistributionMode:I

    .line 258
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mApps:Ljava/util/List;

    .line 259
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mComponentToAppMap:Ljava/util/HashMap;

    .line 260
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mRecentAppList:Ljava/util/ArrayList;

    .line 263
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mFilteredApps:Ljava/util/List;

    .line 265
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mRecentApps:Ljava/util/List;

    .line 267
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mAdapterItems:Ljava/util/List;

    .line 269
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mSections:Ljava/util/List;

    .line 271
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mFastScrollerSections:Ljava/util/List;

    .line 273
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mPredictedAppComponents:Ljava/util/List;

    .line 275
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mPredictedApps:Ljava/util/List;

    .line 278
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mCachedSectionNames:Ljava/util/HashMap;

    .line 287
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mGalaxyItems:Ljava/util/List;

    .line 288
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->called:I

    .line 869
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/android/launcher3/allapps/AlphabeticalAppsList$IncomingHandlerCallback;

    invoke-direct {v1, p0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList$IncomingHandlerCallback;-><init>(Lcom/android/launcher3/allapps/AlphabeticalAppsList;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mIncomingHandler:Landroid/os/Handler;

    move-object v0, p1

    .line 292
    check-cast v0, Lcom/android/launcher3/Launcher;

    iput-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 293
    new-instance v0, Lcom/android/launcher3/common/compat/AlphabeticIndexCompat;

    invoke-direct {v0, p1}, Lcom/android/launcher3/common/compat/AlphabeticIndexCompat;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mIndexer:Lcom/android/launcher3/common/compat/AlphabeticIndexCompat;

    .line 294
    new-instance v0, Lcom/android/launcher3/common/model/AppNameComparator;

    invoke-direct {v0, p1}, Lcom/android/launcher3/common/model/AppNameComparator;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mAppNameComparator:Lcom/android/launcher3/common/model/AppNameComparator;

    .line 295
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/allapps/AlphabeticalAppsList;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mGalaxyItems:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher3/allapps/AlphabeticalAppsList;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->updateAdapterItems()V

    return-void
.end method

.method private getAndUpdateCachedSectionName(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 4
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 814
    iget-object v1, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mCachedSectionNames:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 815
    .local v0, "sectionName":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 821
    invoke-static {}, Lcom/android/launcher3/util/locale/LocaleUtils;->getInstance()Lcom/android/launcher3/util/locale/LocaleUtils;

    move-result-object v1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/util/locale/LocaleUtils;->makeSectionString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 822
    iget-object v1, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mCachedSectionNames:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 824
    :cond_0
    return-object v0
.end method

.method private getFiltersAppInfos()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/common/base/item/IconInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 740
    iget-object v3, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mSearchResults:Ljava/util/ArrayList;

    if-nez v3, :cond_1

    .line 741
    iget-object v2, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mApps:Ljava/util/List;

    .line 751
    :cond_0
    return-object v2

    .line 744
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 745
    .local v2, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    iget-object v3, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mSearchResults:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/util/ComponentKey;

    .line 746
    .local v0, "key":Lcom/android/launcher3/util/ComponentKey;
    iget-object v4, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mComponentToAppMap:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 747
    .local v1, "match":Lcom/android/launcher3/common/base/item/IconInfo;
    if-eqz v1, :cond_2

    .line 748
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private getGalaxyAppsInfos()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/appssearch/ItemDetails;",
            ">;"
        }
    .end annotation

    .prologue
    .line 859
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 860
    .local v0, "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/appssearch/ItemDetails;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mGalaxyItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 861
    iget-object v3, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mGalaxyItems:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/appssearch/ItemDetails;

    .line 862
    .local v2, "match":Lcom/android/launcher3/appssearch/ItemDetails;
    if-eqz v2, :cond_0

    .line 863
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 860
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 866
    .end local v2    # "match":Lcom/android/launcher3/appssearch/ItemDetails;
    :cond_1
    return-object v0
.end method

.method private getRecentAppInfos()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/common/base/item/IconInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 843
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 844
    .local v2, "recent":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mRecentAppList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 845
    iget-object v3, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mRecentAppList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 846
    .local v1, "match":Lcom/android/launcher3/common/base/item/IconInfo;
    if-eqz v1, :cond_0

    .line 847
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 844
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 850
    .end local v1    # "match":Lcom/android/launcher3/common/base/item/IconInfo;
    :cond_1
    return-object v2
.end method

.method private mergeSections()V
    .locals 12

    .prologue
    .line 759
    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mMergeAlgorithm:Lcom/android/launcher3/allapps/AlphabeticalAppsList$MergeAlgorithm;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mNumAppsPerRow:I

    if-nez v0, :cond_1

    .line 807
    :cond_0
    return-void

    .line 764
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->hasFilter()Z

    move-result v0

    if-nez v0, :cond_0

    .line 765
    const/4 v3, 0x0

    .line 766
    .local v3, "sectionAppCount":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mSections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v6, v0, :cond_0

    .line 767
    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mSections:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/allapps/AlphabeticalAppsList$SectionInfo;

    .line 768
    .local v1, "section":Lcom/android/launcher3/allapps/AlphabeticalAppsList$SectionInfo;
    iget v3, v1, Lcom/android/launcher3/allapps/AlphabeticalAppsList$SectionInfo;->numApps:I

    .line 769
    const/4 v5, 0x1

    .line 772
    .local v5, "mergeCount":I
    :goto_1
    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mSections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v6, v0, :cond_4

    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mMergeAlgorithm:Lcom/android/launcher3/allapps/AlphabeticalAppsList$MergeAlgorithm;

    iget-object v2, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mSections:Ljava/util/List;

    add-int/lit8 v4, v6, 0x1

    .line 773
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/allapps/AlphabeticalAppsList$SectionInfo;

    iget v4, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mNumAppsPerRow:I

    invoke-interface/range {v0 .. v5}, Lcom/android/launcher3/allapps/AlphabeticalAppsList$MergeAlgorithm;->continueMerging(Lcom/android/launcher3/allapps/AlphabeticalAppsList$SectionInfo;Lcom/android/launcher3/allapps/AlphabeticalAppsList$SectionInfo;III)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 775
    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mSections:Ljava/util/List;

    add-int/lit8 v2, v6, 0x1

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/launcher3/allapps/AlphabeticalAppsList$SectionInfo;

    .line 778
    .local v10, "nextSection":Lcom/android/launcher3/allapps/AlphabeticalAppsList$SectionInfo;
    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mAdapterItems:Ljava/util/List;

    iget-object v2, v10, Lcom/android/launcher3/allapps/AlphabeticalAppsList$SectionInfo;->sectionBreakItem:Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 779
    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mAdapterItems:Ljava/util/List;

    iget-object v2, v1, Lcom/android/launcher3/allapps/AlphabeticalAppsList$SectionInfo;->firstAppItem:Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    invoke-interface {v0, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v11

    .line 782
    .local v11, "pos":I
    iget v0, v1, Lcom/android/launcher3/allapps/AlphabeticalAppsList$SectionInfo;->numApps:I

    add-int v9, v11, v0

    .line 783
    .local v9, "nextPos":I
    move v8, v9

    .local v8, "j":I
    :goto_2
    iget v0, v10, Lcom/android/launcher3/allapps/AlphabeticalAppsList$SectionInfo;->numApps:I

    add-int/2addr v0, v9

    if-ge v8, v0, :cond_2

    .line 784
    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mAdapterItems:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    .line 785
    .local v7, "item":Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;
    iput-object v1, v7, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->sectionInfo:Lcom/android/launcher3/allapps/AlphabeticalAppsList$SectionInfo;

    .line 786
    iget v0, v7, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->sectionAppIndex:I

    iget v2, v1, Lcom/android/launcher3/allapps/AlphabeticalAppsList$SectionInfo;->numApps:I

    add-int/2addr v0, v2

    iput v0, v7, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->sectionAppIndex:I

    .line 783
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 790
    .end local v7    # "item":Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;
    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mAdapterItems:Ljava/util/List;

    iget-object v2, v10, Lcom/android/launcher3/allapps/AlphabeticalAppsList$SectionInfo;->firstAppItem:Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    invoke-interface {v0, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v11

    .line 791
    move v8, v11

    :goto_3
    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mAdapterItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v8, v0, :cond_3

    .line 792
    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mAdapterItems:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    .line 793
    .restart local v7    # "item":Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;
    iget v0, v7, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->position:I

    add-int/lit8 v0, v0, -0x1

    iput v0, v7, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->position:I

    .line 791
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 795
    .end local v7    # "item":Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;
    :cond_3
    iget v0, v1, Lcom/android/launcher3/allapps/AlphabeticalAppsList$SectionInfo;->numApps:I

    iget v2, v10, Lcom/android/launcher3/allapps/AlphabeticalAppsList$SectionInfo;->numApps:I

    add-int/2addr v0, v2

    iput v0, v1, Lcom/android/launcher3/allapps/AlphabeticalAppsList$SectionInfo;->numApps:I

    .line 796
    iget v0, v10, Lcom/android/launcher3/allapps/AlphabeticalAppsList$SectionInfo;->numApps:I

    add-int/2addr v3, v0

    .line 803
    add-int/lit8 v5, v5, 0x1

    .line 804
    goto/16 :goto_1

    .line 766
    .end local v8    # "j":I
    .end local v9    # "nextPos":I
    .end local v10    # "nextSection":Lcom/android/launcher3/allapps/AlphabeticalAppsList$SectionInfo;
    .end local v11    # "pos":I
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0
.end method

.method private onAppsUpdated()V
    .locals 10

    .prologue
    .line 437
    iget-object v8, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mApps:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->clear()V

    .line 438
    iget-object v8, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mApps:Ljava/util/List;

    iget-object v9, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mComponentToAppMap:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 439
    iget-object v8, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mApps:Ljava/util/List;

    iget-object v9, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mAppNameComparator:Lcom/android/launcher3/common/model/AppNameComparator;

    invoke-virtual {v9}, Lcom/android/launcher3/common/model/AppNameComparator;->getAppInfoComparator()Ljava/util/Comparator;

    move-result-object v9

    invoke-static {v8, v9}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 443
    iget-object v8, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v8}, Lcom/android/launcher3/Utilities;->getLocale(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v1

    .line 444
    .local v1, "curLocale":Ljava/util/Locale;
    const/4 v6, 0x0

    .line 445
    .local v6, "sectionMap":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;>;"
    sget-object v8, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-virtual {v1, v8}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 446
    .local v4, "localeRequiresSectionSorting":Z
    if-eqz v4, :cond_4

    .line 449
    new-instance v6, Ljava/util/TreeMap;

    .end local v6    # "sectionMap":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;>;"
    iget-object v8, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mAppNameComparator:Lcom/android/launcher3/common/model/AppNameComparator;

    invoke-virtual {v8}, Lcom/android/launcher3/common/model/AppNameComparator;->getSectionNameComparator()Ljava/util/Comparator;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 450
    .restart local v6    # "sectionMap":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;>;"
    iget-object v8, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mApps:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 452
    .local v3, "info":Lcom/android/launcher3/common/base/item/IconInfo;
    iget-object v9, v3, Lcom/android/launcher3/common/base/item/IconInfo;->title:Ljava/lang/CharSequence;

    invoke-direct {p0, v9}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->getAndUpdateCachedSectionName(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 455
    .local v7, "sectionName":Ljava/lang/String;
    invoke-virtual {v6, v7}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 456
    .local v5, "sectionApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    if-nez v5, :cond_0

    .line 457
    new-instance v5, Ljava/util/ArrayList;

    .end local v5    # "sectionApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 458
    .restart local v5    # "sectionApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    invoke-virtual {v6, v7, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    :cond_0
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 464
    .end local v3    # "info":Lcom/android/launcher3/common/base/item/IconInfo;
    .end local v5    # "sectionApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    .end local v7    # "sectionName":Ljava/lang/String;
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mApps:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    invoke-direct {v0, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 465
    .local v0, "allApps":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    invoke-virtual {v6}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 466
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Collection;

    invoke-interface {v0, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 469
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;>;"
    :cond_2
    iget-object v8, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mApps:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->clear()V

    .line 470
    iget-object v8, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mApps:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 480
    .end local v0    # "allApps":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    :cond_3
    invoke-direct {p0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->updateAdapterItems()V

    .line 482
    return-void

    .line 473
    :cond_4
    iget-object v8, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mApps:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 475
    .restart local v3    # "info":Lcom/android/launcher3/common/base/item/IconInfo;
    iget-object v9, v3, Lcom/android/launcher3/common/base/item/IconInfo;->title:Ljava/lang/CharSequence;

    invoke-direct {p0, v9}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->getAndUpdateCachedSectionName(Ljava/lang/CharSequence;)Ljava/lang/String;

    goto :goto_2
.end method

.method private updateAdapterItems()V
    .locals 30

    .prologue
    .line 489
    const/4 v3, 0x0

    .line 490
    .local v3, "lastSectionInfo":Lcom/android/launcher3/allapps/AlphabeticalAppsList$SectionInfo;
    const/16 v17, 0x0

    .line 491
    .local v17, "lastSectionName":Ljava/lang/String;
    const/16 v16, 0x0

    .line 492
    .local v16, "lastFastScrollerSectionInfo":Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;
    const/4 v2, 0x0

    .line 493
    .local v2, "position":I
    const/4 v7, 0x0

    .line 496
    .local v7, "appIndex":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mFilteredApps:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 497
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mFastScrollerSections:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 498
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mAdapterItems:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 499
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mSections:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 515
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mPredictedApps:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 516
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mPredictedAppComponents:Ljava/util/List;

    if-eqz v5, :cond_4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mPredictedAppComponents:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->hasFilter()Z

    move-result v5

    if-nez v5, :cond_4

    .line 517
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mPredictedAppComponents:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/launcher3/util/ComponentKey;

    .line 518
    .local v10, "ck":Lcom/android/launcher3/util/ComponentKey;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mComponentToAppMap:Ljava/util/HashMap;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 519
    .local v6, "info":Lcom/android/launcher3/common/base/item/IconInfo;
    if-eqz v6, :cond_3

    .line 520
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mPredictedApps:Ljava/util/List;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 525
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mPredictedApps:Ljava/util/List;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Ljava/util/List;->size()I

    move-result v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mNumPredictedAppsPerRow:I

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_0

    .line 530
    .end local v6    # "info":Lcom/android/launcher3/common/base/item/IconInfo;
    .end local v10    # "ck":Lcom/android/launcher3/util/ComponentKey;
    :cond_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mPredictedApps:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    .line 532
    new-instance v3, Lcom/android/launcher3/allapps/AlphabeticalAppsList$SectionInfo;

    .end local v3    # "lastSectionInfo":Lcom/android/launcher3/allapps/AlphabeticalAppsList$SectionInfo;
    invoke-direct {v3}, Lcom/android/launcher3/allapps/AlphabeticalAppsList$SectionInfo;-><init>()V

    .line 533
    .restart local v3    # "lastSectionInfo":Lcom/android/launcher3/allapps/AlphabeticalAppsList$SectionInfo;
    new-instance v16, Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;

    .end local v16    # "lastFastScrollerSectionInfo":Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;
    const-string v5, ""

    move-object/from16 v0, v16

    invoke-direct {v0, v5}, Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;-><init>(Ljava/lang/String;)V

    .line 534
    .restart local v16    # "lastFastScrollerSectionInfo":Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;
    add-int/lit8 v22, v2, 0x1

    .end local v2    # "position":I
    .local v22, "position":I
    invoke-static {v2, v3}, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->asSectionBreak(ILcom/android/launcher3/allapps/AlphabeticalAppsList$SectionInfo;)Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    move-result-object v25

    .line 535
    .local v25, "sectionItem":Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mSections:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 536
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mFastScrollerSections:Ljava/util/List;

    move-object/from16 v0, v16

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 537
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mAdapterItems:Ljava/util/List;

    move-object/from16 v0, v25

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 540
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mPredictedApps:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v27

    move/from16 v2, v22

    .end local v22    # "position":I
    .restart local v2    # "position":I
    :goto_1
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 541
    .restart local v6    # "info":Lcom/android/launcher3/common/base/item/IconInfo;
    add-int/lit8 v22, v2, 0x1

    .end local v2    # "position":I
    .restart local v22    # "position":I
    const-string v4, ""

    iget v5, v3, Lcom/android/launcher3/allapps/AlphabeticalAppsList$SectionInfo;->numApps:I

    add-int/lit8 v28, v5, 0x1

    move/from16 v0, v28

    iput v0, v3, Lcom/android/launcher3/allapps/AlphabeticalAppsList$SectionInfo;->numApps:I

    add-int/lit8 v8, v7, 0x1

    .end local v7    # "appIndex":I
    .local v8, "appIndex":I
    invoke-static/range {v2 .. v7}, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->asPredictedApp(ILcom/android/launcher3/allapps/AlphabeticalAppsList$SectionInfo;Ljava/lang/String;ILcom/android/launcher3/common/base/item/IconInfo;I)Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    move-result-object v9

    .line 543
    .local v9, "appItem":Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;
    iget-object v5, v3, Lcom/android/launcher3/allapps/AlphabeticalAppsList$SectionInfo;->firstAppItem:Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    if-nez v5, :cond_2

    .line 544
    iput-object v9, v3, Lcom/android/launcher3/allapps/AlphabeticalAppsList$SectionInfo;->firstAppItem:Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    .line 545
    move-object/from16 v0, v16

    iput-object v9, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;->fastScrollToItem:Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    .line 547
    :cond_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mAdapterItems:Ljava/util/List;

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 548
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mFilteredApps:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v7, v8

    .end local v8    # "appIndex":I
    .restart local v7    # "appIndex":I
    move/from16 v2, v22

    .line 549
    .end local v22    # "position":I
    .restart local v2    # "position":I
    goto :goto_1

    .line 522
    .end local v9    # "appItem":Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;
    .end local v25    # "sectionItem":Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;
    .restart local v10    # "ck":Lcom/android/launcher3/util/ComponentKey;
    :cond_3
    const-string v27, "AlphabeticalAppsList"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Predicted app not found: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v10, v0}, Lcom/android/launcher3/util/ComponentKey;->flattenToString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 554
    .end local v6    # "info":Lcom/android/launcher3/common/base/item/IconInfo;
    .end local v10    # "ck":Lcom/android/launcher3/util/ComponentKey;
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->hasFilter()Z

    move-result v5

    if-eqz v5, :cond_f

    .line 557
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->getFiltersAppInfos()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v27

    :cond_5
    :goto_2
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 558
    .restart local v6    # "info":Lcom/android/launcher3/common/base/item/IconInfo;
    invoke-virtual {v6}, Lcom/android/launcher3/common/base/item/IconInfo;->isHiddenByXML()Z

    move-result v5

    if-nez v5, :cond_5

    .line 561
    iget-object v5, v6, Lcom/android/launcher3/common/base/item/IconInfo;->title:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->getAndUpdateCachedSectionName(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 564
    .local v4, "sectionName":Ljava/lang/String;
    if-eqz v3, :cond_6

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 565
    :cond_6
    move-object/from16 v17, v4

    .line 566
    new-instance v3, Lcom/android/launcher3/allapps/AlphabeticalAppsList$SectionInfo;

    .end local v3    # "lastSectionInfo":Lcom/android/launcher3/allapps/AlphabeticalAppsList$SectionInfo;
    invoke-direct {v3}, Lcom/android/launcher3/allapps/AlphabeticalAppsList$SectionInfo;-><init>()V

    .line 567
    .restart local v3    # "lastSectionInfo":Lcom/android/launcher3/allapps/AlphabeticalAppsList$SectionInfo;
    new-instance v16, Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;

    .end local v16    # "lastFastScrollerSectionInfo":Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;
    move-object/from16 v0, v16

    invoke-direct {v0, v4}, Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;-><init>(Ljava/lang/String;)V

    .line 568
    .restart local v16    # "lastFastScrollerSectionInfo":Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mSections:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 569
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mFastScrollerSections:Ljava/util/List;

    move-object/from16 v0, v16

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 572
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->hasFilter()Z

    move-result v5

    if-nez v5, :cond_7

    .line 573
    add-int/lit8 v22, v2, 0x1

    .end local v2    # "position":I
    .restart local v22    # "position":I
    invoke-static {v2, v3}, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->asSectionBreak(ILcom/android/launcher3/allapps/AlphabeticalAppsList$SectionInfo;)Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    move-result-object v25

    .line 574
    .restart local v25    # "sectionItem":Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mAdapterItems:Ljava/util/List;

    move-object/from16 v0, v25

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v2, v22

    .line 579
    .end local v22    # "position":I
    .end local v25    # "sectionItem":Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;
    .restart local v2    # "position":I
    :cond_7
    add-int/lit8 v22, v2, 0x1

    .end local v2    # "position":I
    .restart local v22    # "position":I
    iget v5, v3, Lcom/android/launcher3/allapps/AlphabeticalAppsList$SectionInfo;->numApps:I

    add-int/lit8 v28, v5, 0x1

    move/from16 v0, v28

    iput v0, v3, Lcom/android/launcher3/allapps/AlphabeticalAppsList$SectionInfo;->numApps:I

    add-int/lit8 v8, v7, 0x1

    .end local v7    # "appIndex":I
    .restart local v8    # "appIndex":I
    invoke-static/range {v2 .. v7}, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->asApp(ILcom/android/launcher3/allapps/AlphabeticalAppsList$SectionInfo;Ljava/lang/String;ILcom/android/launcher3/common/base/item/IconInfo;I)Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    move-result-object v9

    .line 581
    .restart local v9    # "appItem":Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;
    iget-object v5, v3, Lcom/android/launcher3/allapps/AlphabeticalAppsList$SectionInfo;->firstAppItem:Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    if-nez v5, :cond_8

    .line 582
    iput-object v9, v3, Lcom/android/launcher3/allapps/AlphabeticalAppsList$SectionInfo;->firstAppItem:Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    .line 583
    move-object/from16 v0, v16

    iput-object v9, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;->fastScrollToItem:Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    .line 585
    :cond_8
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mAdapterItems:Ljava/util/List;

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 586
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mFilteredApps:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v7, v8

    .end local v8    # "appIndex":I
    .restart local v7    # "appIndex":I
    move/from16 v2, v22

    .line 587
    .end local v22    # "position":I
    .restart local v2    # "position":I
    goto/16 :goto_2

    .line 588
    .end local v4    # "sectionName":Ljava/lang/String;
    .end local v6    # "info":Lcom/android/launcher3/common/base/item/IconInfo;
    .end local v9    # "appItem":Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->hasNoFilteredResults()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 589
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mAdapterItems:Ljava/util/List;

    add-int/lit8 v22, v2, 0x1

    .end local v2    # "position":I
    .restart local v22    # "position":I
    invoke-static {v2}, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->asEmptySearch(I)Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v2, v22

    .line 593
    .end local v22    # "position":I
    .restart local v2    # "position":I
    :cond_a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mGalaxyItems:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_b

    .line 594
    const/4 v12, 0x0

    .line 595
    .local v12, "i":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mAdapterItems:Ljava/util/List;

    add-int/lit8 v22, v2, 0x1

    .end local v2    # "position":I
    .restart local v22    # "position":I
    invoke-static {v2}, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->asTitle(I)Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 596
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mAdapterItems:Ljava/util/List;

    add-int/lit8 v2, v22, 0x1

    .end local v22    # "position":I
    .restart local v2    # "position":I
    invoke-static/range {v22 .. v22}, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->asDivider(I)Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 597
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->getGalaxyAppsInfos()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/launcher3/appssearch/ItemDetails;

    .line 598
    .local v15, "itemDetails":Lcom/android/launcher3/appssearch/ItemDetails;
    add-int/lit8 v22, v2, 0x1

    .end local v2    # "position":I
    .restart local v22    # "position":I
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "appIndex":I
    .restart local v8    # "appIndex":I
    invoke-static {v2, v15, v7}, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->asGalaxyApp(ILcom/android/launcher3/appssearch/ItemDetails;I)Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    move-result-object v9

    .line 599
    .restart local v9    # "appItem":Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mAdapterItems:Ljava/util/List;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 600
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mGalaxyItems:Ljava/util/List;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Ljava/util/List;->size()I

    move-result v27

    add-int/lit8 v27, v27, -0x1

    move/from16 v0, v27

    if-ge v12, v0, :cond_20

    .line 601
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mAdapterItems:Ljava/util/List;

    move-object/from16 v27, v0

    add-int/lit8 v2, v22, 0x1

    .end local v22    # "position":I
    .restart local v2    # "position":I
    invoke-static/range {v22 .. v22}, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->asDivider(I)Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    move-result-object v28

    invoke-interface/range {v27 .. v28}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 602
    add-int/lit8 v12, v12, 0x1

    :goto_4
    move v7, v8

    .line 604
    .end local v8    # "appIndex":I
    .restart local v7    # "appIndex":I
    goto :goto_3

    .line 606
    .end local v9    # "appItem":Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;
    .end local v12    # "i":I
    .end local v15    # "itemDetails":Lcom/android/launcher3/appssearch/ItemDetails;
    :cond_b
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportGalaxyAppsSearch()Z

    move-result v5

    if-eqz v5, :cond_d

    .line 607
    const-string v5, "com.sec.android.app.samsungapps"

    const/16 v27, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v5, v1}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->isAppInstalled(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 608
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mAdapterItems:Ljava/util/List;

    add-int/lit8 v22, v2, 0x1

    .end local v2    # "position":I
    .restart local v22    # "position":I
    invoke-static {v2}, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->asViewGalaxyButton(I)Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v2, v22

    .line 609
    .end local v22    # "position":I
    .restart local v2    # "position":I
    :cond_c
    const-string v5, "com.android.vending"

    const/16 v27, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v5, v1}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->isAppInstalled(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 610
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mAdapterItems:Ljava/util/List;

    add-int/lit8 v22, v2, 0x1

    .end local v2    # "position":I
    .restart local v22    # "position":I
    invoke-static {v2}, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->asViewMarketButton(I)Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v2, v22

    .line 671
    .end local v22    # "position":I
    .restart local v2    # "position":I
    :cond_d
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mergeSections()V

    .line 673
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mNumAppsPerRow:I

    if-eqz v5, :cond_1d

    .line 676
    const/16 v20, 0x0

    .line 677
    .local v20, "numAppsInSection":I
    const/16 v19, 0x0

    .line 678
    .local v19, "numAppsInRow":I
    const/16 v24, -0x1

    .line 679
    .local v24, "rowIndex":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mAdapterItems:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_e
    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_1c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    .line 680
    .local v14, "item":Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;
    const/16 v27, 0x0

    move/from16 v0, v27

    iput v0, v14, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->rowIndex:I

    .line 681
    iget v0, v14, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->viewType:I

    move/from16 v27, v0

    if-nez v27, :cond_19

    .line 682
    const/16 v20, 0x0

    goto :goto_5

    .line 616
    .end local v14    # "item":Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;
    .end local v19    # "numAppsInRow":I
    .end local v20    # "numAppsInSection":I
    .end local v24    # "rowIndex":I
    :cond_f
    const/4 v13, 0x0

    .line 617
    .local v13, "indexlist":Z
    if-eqz v13, :cond_13

    .line 618
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->getApps()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v27

    :goto_6
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 619
    .restart local v6    # "info":Lcom/android/launcher3/common/base/item/IconInfo;
    iget-object v5, v6, Lcom/android/launcher3/common/base/item/IconInfo;->title:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->getAndUpdateCachedSectionName(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 622
    .restart local v4    # "sectionName":Ljava/lang/String;
    if-eqz v3, :cond_10

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_11

    .line 623
    :cond_10
    move-object/from16 v17, v4

    .line 624
    new-instance v3, Lcom/android/launcher3/allapps/AlphabeticalAppsList$SectionInfo;

    .end local v3    # "lastSectionInfo":Lcom/android/launcher3/allapps/AlphabeticalAppsList$SectionInfo;
    invoke-direct {v3}, Lcom/android/launcher3/allapps/AlphabeticalAppsList$SectionInfo;-><init>()V

    .line 625
    .restart local v3    # "lastSectionInfo":Lcom/android/launcher3/allapps/AlphabeticalAppsList$SectionInfo;
    new-instance v16, Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;

    .end local v16    # "lastFastScrollerSectionInfo":Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;
    move-object/from16 v0, v16

    invoke-direct {v0, v4}, Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;-><init>(Ljava/lang/String;)V

    .line 626
    .restart local v16    # "lastFastScrollerSectionInfo":Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mSections:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 627
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mFastScrollerSections:Ljava/util/List;

    move-object/from16 v0, v16

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 628
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mAdapterItems:Ljava/util/List;

    add-int/lit8 v22, v2, 0x1

    .end local v2    # "position":I
    .restart local v22    # "position":I
    invoke-static {v2, v4}, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->asListHeader(ILjava/lang/String;)Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v2, v22

    .line 632
    .end local v22    # "position":I
    .restart local v2    # "position":I
    :cond_11
    add-int/lit8 v22, v2, 0x1

    .end local v2    # "position":I
    .restart local v22    # "position":I
    iget v5, v3, Lcom/android/launcher3/allapps/AlphabeticalAppsList$SectionInfo;->numApps:I

    add-int/lit8 v28, v5, 0x1

    move/from16 v0, v28

    iput v0, v3, Lcom/android/launcher3/allapps/AlphabeticalAppsList$SectionInfo;->numApps:I

    add-int/lit8 v8, v7, 0x1

    .end local v7    # "appIndex":I
    .restart local v8    # "appIndex":I
    invoke-static/range {v2 .. v7}, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->asApp(ILcom/android/launcher3/allapps/AlphabeticalAppsList$SectionInfo;Ljava/lang/String;ILcom/android/launcher3/common/base/item/IconInfo;I)Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    move-result-object v9

    .line 634
    .restart local v9    # "appItem":Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;
    iget-object v5, v3, Lcom/android/launcher3/allapps/AlphabeticalAppsList$SectionInfo;->firstAppItem:Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    if-nez v5, :cond_12

    .line 635
    iput-object v9, v3, Lcom/android/launcher3/allapps/AlphabeticalAppsList$SectionInfo;->firstAppItem:Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    .line 636
    move-object/from16 v0, v16

    iput-object v9, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;->fastScrollToItem:Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    .line 638
    :cond_12
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mAdapterItems:Ljava/util/List;

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v7, v8

    .end local v8    # "appIndex":I
    .restart local v7    # "appIndex":I
    move/from16 v2, v22

    .line 639
    .end local v22    # "position":I
    .restart local v2    # "position":I
    goto :goto_6

    .line 641
    .end local v4    # "sectionName":Ljava/lang/String;
    .end local v6    # "info":Lcom/android/launcher3/common/base/item/IconInfo;
    .end local v9    # "appItem":Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;
    :cond_13
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mRecentAppList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_17

    .line 642
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->getRecentAppInfos()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v27

    :goto_7
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 643
    .restart local v6    # "info":Lcom/android/launcher3/common/base/item/IconInfo;
    iget-object v5, v6, Lcom/android/launcher3/common/base/item/IconInfo;->title:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->getAndUpdateCachedSectionName(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 646
    .restart local v4    # "sectionName":Ljava/lang/String;
    if-eqz v3, :cond_14

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_15

    .line 647
    :cond_14
    move-object/from16 v17, v4

    .line 648
    new-instance v3, Lcom/android/launcher3/allapps/AlphabeticalAppsList$SectionInfo;

    .end local v3    # "lastSectionInfo":Lcom/android/launcher3/allapps/AlphabeticalAppsList$SectionInfo;
    invoke-direct {v3}, Lcom/android/launcher3/allapps/AlphabeticalAppsList$SectionInfo;-><init>()V

    .line 649
    .restart local v3    # "lastSectionInfo":Lcom/android/launcher3/allapps/AlphabeticalAppsList$SectionInfo;
    new-instance v16, Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;

    .end local v16    # "lastFastScrollerSectionInfo":Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;
    move-object/from16 v0, v16

    invoke-direct {v0, v4}, Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;-><init>(Ljava/lang/String;)V

    .line 650
    .restart local v16    # "lastFastScrollerSectionInfo":Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mSections:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 651
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mFastScrollerSections:Ljava/util/List;

    move-object/from16 v0, v16

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 654
    :cond_15
    add-int/lit8 v22, v2, 0x1

    .end local v2    # "position":I
    .restart local v22    # "position":I
    iget v5, v3, Lcom/android/launcher3/allapps/AlphabeticalAppsList$SectionInfo;->numApps:I

    add-int/lit8 v28, v5, 0x1

    move/from16 v0, v28

    iput v0, v3, Lcom/android/launcher3/allapps/AlphabeticalAppsList$SectionInfo;->numApps:I

    add-int/lit8 v8, v7, 0x1

    .end local v7    # "appIndex":I
    .restart local v8    # "appIndex":I
    invoke-static/range {v2 .. v7}, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->asRecentApp(ILcom/android/launcher3/allapps/AlphabeticalAppsList$SectionInfo;Ljava/lang/String;ILcom/android/launcher3/common/base/item/IconInfo;I)Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    move-result-object v9

    .line 656
    .restart local v9    # "appItem":Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;
    iget-object v5, v3, Lcom/android/launcher3/allapps/AlphabeticalAppsList$SectionInfo;->firstAppItem:Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    if-nez v5, :cond_16

    .line 657
    iput-object v9, v3, Lcom/android/launcher3/allapps/AlphabeticalAppsList$SectionInfo;->firstAppItem:Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    .line 658
    move-object/from16 v0, v16

    iput-object v9, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;->fastScrollToItem:Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    .line 660
    :cond_16
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mAdapterItems:Ljava/util/List;

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v7, v8

    .end local v8    # "appIndex":I
    .restart local v7    # "appIndex":I
    move/from16 v2, v22

    .line 661
    .end local v22    # "position":I
    .restart local v2    # "position":I
    goto :goto_7

    .line 663
    .end local v4    # "sectionName":Ljava/lang/String;
    .end local v6    # "info":Lcom/android/launcher3/common/base/item/IconInfo;
    .end local v9    # "appItem":Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;
    :cond_17
    add-int/lit8 v22, v2, 0x1

    .end local v2    # "position":I
    .restart local v22    # "position":I
    invoke-static {v2}, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->asNotiText(I)Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    move-result-object v18

    .line 664
    .local v18, "noti":Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mAdapterItems:Ljava/util/List;

    move-object/from16 v0, v18

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v2, v22

    .line 737
    .end local v13    # "indexlist":Z
    .end local v18    # "noti":Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;
    .end local v22    # "position":I
    .restart local v2    # "position":I
    :cond_18
    :goto_8
    return-void

    .line 683
    .restart local v14    # "item":Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;
    .restart local v19    # "numAppsInRow":I
    .restart local v20    # "numAppsInSection":I
    .restart local v24    # "rowIndex":I
    :cond_19
    iget v0, v14, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->viewType:I

    move/from16 v27, v0

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_1a

    iget v0, v14, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->viewType:I

    move/from16 v27, v0

    const/16 v28, 0x2

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_1a

    iget v0, v14, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->viewType:I

    move/from16 v27, v0

    const/16 v28, 0x7

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_e

    .line 686
    :cond_1a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mNumAppsPerRow:I

    move/from16 v27, v0

    rem-int v27, v20, v27

    if-nez v27, :cond_1b

    .line 687
    const/16 v19, 0x0

    .line 688
    add-int/lit8 v24, v24, 0x1

    .line 690
    :cond_1b
    move/from16 v0, v24

    iput v0, v14, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->rowIndex:I

    .line 691
    move/from16 v0, v19

    iput v0, v14, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->rowAppIndex:I

    .line 692
    add-int/lit8 v20, v20, 0x1

    .line 693
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_5

    .line 696
    .end local v14    # "item":Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;
    :cond_1c
    add-int/lit8 v5, v24, 0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mNumAppRowsInAdapter:I

    .line 699
    const/4 v5, 0x1

    packed-switch v5, :pswitch_data_0

    .line 734
    .end local v19    # "numAppsInRow":I
    .end local v20    # "numAppsInSection":I
    .end local v24    # "rowIndex":I
    :cond_1d
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-eqz v5, :cond_18

    .line 735
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto :goto_8

    .line 701
    .restart local v19    # "numAppsInRow":I
    .restart local v20    # "numAppsInSection":I
    .restart local v24    # "rowIndex":I
    :pswitch_0
    const/high16 v5, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mNumAppRowsInAdapter:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    div-float v23, v5, v27

    .line 702
    .local v23, "rowFraction":F
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mFastScrollerSections:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_9
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_1d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;

    .line 703
    .local v6, "info":Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;
    iget-object v14, v6, Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;->fastScrollToItem:Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    .line 704
    .restart local v14    # "item":Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;
    iget v0, v14, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->viewType:I

    move/from16 v27, v0

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_1e

    iget v0, v14, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->viewType:I

    move/from16 v27, v0

    const/16 v28, 0x2

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_1e

    iget v0, v14, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->viewType:I

    move/from16 v27, v0

    const/16 v28, 0x7

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_1e

    .line 707
    const/16 v27, 0x0

    move/from16 v0, v27

    iput v0, v6, Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;->touchFraction:F

    goto :goto_9

    .line 711
    :cond_1e
    iget v0, v14, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->rowAppIndex:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mNumAppsPerRow:I

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    div-float v28, v23, v28

    mul-float v26, v27, v28

    .line 712
    .local v26, "subRowFraction":F
    iget v0, v14, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->rowIndex:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    mul-float v27, v27, v23

    add-float v27, v27, v26

    move/from16 v0, v27

    iput v0, v6, Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;->touchFraction:F

    goto :goto_9

    .line 716
    .end local v6    # "info":Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;
    .end local v14    # "item":Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;
    .end local v23    # "rowFraction":F
    .end local v26    # "subRowFraction":F
    :pswitch_1
    const/high16 v5, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mFastScrollerSections:Ljava/util/List;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Ljava/util/List;->size()I

    move-result v27

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    div-float v21, v5, v27

    .line 717
    .local v21, "perSectionTouchFraction":F
    const/4 v11, 0x0

    .line 718
    .local v11, "cumulativeTouchFraction":F
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mFastScrollerSections:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_1d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;

    .line 719
    .restart local v6    # "info":Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;
    iget-object v14, v6, Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;->fastScrollToItem:Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    .line 720
    .restart local v14    # "item":Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;
    iget v0, v14, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->viewType:I

    move/from16 v27, v0

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_1f

    iget v0, v14, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->viewType:I

    move/from16 v27, v0

    const/16 v28, 0x2

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_1f

    iget v0, v14, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->viewType:I

    move/from16 v27, v0

    const/16 v28, 0x7

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_1f

    .line 723
    const/16 v27, 0x0

    move/from16 v0, v27

    iput v0, v6, Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;->touchFraction:F

    goto :goto_a

    .line 726
    :cond_1f
    iput v11, v6, Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;->touchFraction:F

    .line 727
    add-float v11, v11, v21

    .line 728
    goto :goto_a

    .end local v2    # "position":I
    .end local v6    # "info":Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;
    .end local v7    # "appIndex":I
    .end local v11    # "cumulativeTouchFraction":F
    .end local v14    # "item":Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;
    .end local v19    # "numAppsInRow":I
    .end local v20    # "numAppsInSection":I
    .end local v21    # "perSectionTouchFraction":F
    .end local v24    # "rowIndex":I
    .restart local v8    # "appIndex":I
    .restart local v9    # "appItem":Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;
    .restart local v12    # "i":I
    .restart local v15    # "itemDetails":Lcom/android/launcher3/appssearch/ItemDetails;
    .restart local v22    # "position":I
    :cond_20
    move/from16 v2, v22

    .end local v22    # "position":I
    .restart local v2    # "position":I
    goto/16 :goto_4

    .line 699
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public addApps(Ljava/util/List;)V
    .locals 0
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
    .line 405
    .local p1, "apps":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->updateApps(Ljava/util/List;)V

    .line 406
    return-void
.end method

.method public clearGalaxyItems()V
    .locals 1

    .prologue
    .line 854
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->called:I

    .line 855
    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mGalaxyItems:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mGalaxyItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 856
    :cond_0
    return-void
.end method

.method public getAdapterItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 342
    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mAdapterItems:Ljava/util/List;

    return-object v0
.end method

.method public getAppInfos()Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/launcher3/util/ComponentKey;",
            "Lcom/android/launcher3/common/base/item/IconInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 832
    iget-object v1, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mApps:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 833
    .local v0, "info":Lcom/android/launcher3/common/base/item/IconInfo;
    iget-object v2, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mComponentToAppMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/android/launcher3/common/base/item/IconInfo;->toComponentKey()Lcom/android/launcher3/util/ComponentKey;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 835
    .end local v0    # "info":Lcom/android/launcher3/common/base/item/IconInfo;
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mComponentToAppMap:Ljava/util/HashMap;

    return-object v1
.end method

.method public getApps()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/common/base/item/IconInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 321
    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mApps:Ljava/util/List;

    return-object v0
.end method

.method public getFastScrollerSections()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 335
    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mFastScrollerSections:Ljava/util/List;

    return-object v0
.end method

.method public getFilteredAppsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/common/base/item/IconInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 936
    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mFilteredApps:Ljava/util/List;

    return-object v0
.end method

.method public getNumAppRows()I
    .locals 1

    .prologue
    .line 349
    iget v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mNumAppRowsInAdapter:I

    return v0
.end method

.method public getNumFilteredApps()I
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mFilteredApps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getSections()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/allapps/AlphabeticalAppsList$SectionInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 328
    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mSections:Ljava/util/List;

    return-object v0
.end method

.method public hasFilter()Z
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mSearchResults:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasNoFilteredResults()Z
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mSearchResults:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mFilteredApps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAppInstalled(Ljava/lang/String;Z)Z
    .locals 7
    .param p1, "strAppPackage"    # Ljava/lang/String;
    .param p2, "launcherCategory_check"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 917
    iget-object v6, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher3/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 920
    .local v3, "pm":Landroid/content/pm/PackageManager;
    if-eqz p2, :cond_0

    .line 921
    invoke-virtual {v3, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 922
    .local v1, "intentOfStartActivity":Landroid/content/Intent;
    if-nez v1, :cond_0

    .line 932
    .end local v1    # "intentOfStartActivity":Landroid/content/Intent;
    :goto_0
    return v4

    .line 926
    :cond_0
    const/4 v6, 0x1

    :try_start_0
    invoke-virtual {v3, p1, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .local v2, "pi":Landroid/content/pm/PackageInfo;
    move v4, v5

    .line 932
    goto :goto_0

    .line 928
    .end local v2    # "pi":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 929
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method public removeApps(Ljava/util/List;)V
    .locals 4
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
    .line 424
    .local p1, "apps":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 425
    .local v0, "info":Lcom/android/launcher3/common/base/item/IconInfo;
    iget-object v2, v0, Lcom/android/launcher3/common/base/item/IconInfo;->componentName:Landroid/content/ComponentName;

    if-eqz v2, :cond_0

    .line 426
    iget-object v2, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mComponentToAppMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/android/launcher3/common/base/item/IconInfo;->toComponentKey()Lcom/android/launcher3/util/ComponentKey;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 429
    .end local v0    # "info":Lcom/android/launcher3/common/base/item/IconInfo;
    :cond_1
    invoke-direct {p0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->onAppsUpdated()V

    .line 430
    return-void
.end method

.method public setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V
    .locals 0
    .param p1, "adapter"    # Landroid/support/v7/widget/RecyclerView$Adapter;

    .prologue
    .line 314
    iput-object p1, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    .line 315
    return-void
.end method

.method public setApps(Ljava/util/List;)V
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
    .line 397
    .local p1, "apps":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mComponentToAppMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 398
    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->addApps(Ljava/util/List;)V

    .line 399
    return-void
.end method

.method public setNumAppsPerRow(IILcom/android/launcher3/allapps/AlphabeticalAppsList$MergeAlgorithm;)V
    .locals 0
    .param p1, "numAppsPerRow"    # I
    .param p2, "numPredictedAppsPerRow"    # I
    .param p3, "mergeAlgorithm"    # Lcom/android/launcher3/allapps/AlphabeticalAppsList$MergeAlgorithm;

    .prologue
    .line 302
    iput p1, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mNumAppsPerRow:I

    .line 303
    iput p2, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mNumPredictedAppsPerRow:I

    .line 304
    iput-object p3, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mMergeAlgorithm:Lcom/android/launcher3/allapps/AlphabeticalAppsList$MergeAlgorithm;

    .line 306
    invoke-direct {p0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->updateAdapterItems()V

    .line 307
    return-void
.end method

.method public setOrderedFilter(Ljava/util/ArrayList;)V
    .locals 1
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
    .line 377
    .local p1, "f":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/util/ComponentKey;>;"
    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mSearchResults:Ljava/util/ArrayList;

    if-eq v0, p1, :cond_0

    .line 378
    iput-object p1, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mSearchResults:Ljava/util/ArrayList;

    .line 379
    invoke-direct {p0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->updateAdapterItems()V

    .line 381
    :cond_0
    return-void
.end method

.method public setPredictedApps(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/util/ComponentKey;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 388
    .local p1, "apps":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/util/ComponentKey;>;"
    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mPredictedAppComponents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 389
    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mPredictedAppComponents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 390
    invoke-direct {p0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->onAppsUpdated()V

    .line 391
    return-void
.end method

.method public setRecentAppMap(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/IconInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 839
    .local p1, "set":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    iput-object p1, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mRecentAppList:Ljava/util/ArrayList;

    .line 840
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 828
    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mApps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public updateApps(Ljava/util/List;)V
    .locals 4
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
    .line 412
    .local p1, "apps":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 413
    .local v0, "info":Lcom/android/launcher3/common/base/item/IconInfo;
    iget-object v2, v0, Lcom/android/launcher3/common/base/item/IconInfo;->componentName:Landroid/content/ComponentName;

    if-eqz v2, :cond_0

    .line 414
    iget-object v2, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mComponentToAppMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/android/launcher3/common/base/item/IconInfo;->toComponentKey()Lcom/android/launcher3/util/ComponentKey;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 417
    .end local v0    # "info":Lcom/android/launcher3/common/base/item/IconInfo;
    :cond_1
    invoke-direct {p0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->onAppsUpdated()V

    .line 418
    return-void
.end method
